# Kindlify — Čtečka starověkých textů (Flutter)

## Context

WorldLibraryProject pipeline zpracovává starověké texty (Sanskrit, klasická čínština, hebrejština, pálí, latina, staroseverština, avestánština...) přes NVIDIA SPARK DGX a generuje české souhrny. Kindlify je Flutter mobilní app, která konzumuje tato data jako non-lineární navigator: ne klasická čtečka vlevo-vpravo, ale "sémantická mapa" textu — tři panely na jedné portrait obrazovce telefonu.

---

## Hodnocení konceptu — silné stránky a reálné mezery

### Co je správně
- **Sémantický zoom** je skvělá metafora: text jako mapa, ne jako kniha.
- **Word cloud jako filter** (ne jen dekorace) — selekce slov mění kontext ve všech třech panelech najednou — to je konzistentní a inteligentní.
- **Panel 3 jako AI summary** (nikdy raw text) je odvážné a správné pro tento typ obsahu.
- **LLM inherentně vícejazyčný** — ano, Qwen 2.5 to zvládne.

### Skutečné mezery

1. **Zpětnovazební smyčka word cloudu**: Když vyberu slova → změní se sekce v Panel 1 → mění se kontext → měl by se přegenerovat word cloud? Pokud ano, slova, která jsem právě vybral, mohou zmizet z cloudu. Pokud ne, cloud je "stale" vzhledem k aktuálnímu filtru. Řešení: cloud se přegeneruje na základě **průniku** aktuální navigační pozice + filtrovaných sekcí, ale vybraná slova zůstanou "přišpendlená" (pinned) viditelná vždy.

2. **TF-IDF ≠ raw frequency**: Uživatel říkal "nejčastější", ale raw frequency dá nesmyslné výsledky (v Mahábhárátě: "said", "king", "O"). Musíme použít TF-IDF + named entity recognition (jména božstev, postav, míst). Toto je klíčové pro kvalitu UX.

3. **Chybí čtenářský mód**: Panel 3 nikdy nezobrazí raw text — ale někdo občas chce přečíst konkrétní pasáž. Byte ranges jsou v manifestu uloženy právě pro tento účel — tap na summary sentence by mohl otevřít inline reader na dané místo v textu. Backlog, ale důležité.

4. **Onboarding**: Jak uživatel zjistí, že může klikat na slova a že se tím mění obsah všech tří panelů? Potřeba first-launch tooltip nebo krátká animace.

5. **Latence Panel 3**: Po tapnutí slova → 600ms debounce → RAG call 2–5s. Přechod ze starého summary na nové musí být plynulý (fade-out + streaming-in), ne náhlý skok. Jinak bude UX nervózní.

6. **Panel 1 na 15% výšky (~130px)**: Mahábhárata má 18 parv × desítky adhyájí × stovky šlók. Na 130px nejde zobrazit strom. Řešení: breadcrumb (Book > Chapter > Section) + horizontální chip-scroll sourozenců — ten je na 130px funkční.

7. **Word cloud bez volné textové search**: Pokud "čas" nebo "cosmogony" není vidět v cloudu, nejde na to navigovat. Řešení: chip "+ more" otevře bottom sheet s celým slovníkem + free-text field, který slovo přidá do filtru.

---

## Architektura systému

```
WorldLibraryProject pipeline (Go)
  ↓ nové výstupní stages
{slug}/bundle.zip
  manifest.json     ← hierarchie kapitol + byte ranges
  words.json        ← TF-IDF terms per node (top 50)
  summaries.json    ← předvypočtené souhrny per node × locale
  embeddings.bin    ← float32[768] vektory pro RAG
  embeddings_meta.jsonl
  
FastAPI server (DGX)
  GET /api/v1/books          ← seznam knih
  GET /api/v1/books/{slug}/bundle.zip
  POST /api/v1/books/{slug}/rag  ← SSE streaming RAG
  
Flutter app (Kindlify)
  Drift SQLite (books, nodes, terms, summaries)
  Riverpod state (ReaderState)
  3-panel UI
```

---

## Data schema

### manifest.json
```json
{
  "schema_version": "1.0",
  "slug": "mahabharata",
  "title": "Mahābhārata",
  "source_language": "sa",
  "script": "devanagari",
  "pipeline_version": "...",
  "generated_at": "2026-05-24T...",
  "tree": {
    "id": "root", "kind": "book", "label": "Mahābhārata",
    "byte_start": 0, "byte_end": 18432000,
    "children": [
      { "id": "parva_01", "kind": "chapter", "label": "Ādi Parva",
        "byte_start": 0, "byte_end": 1204800, "children": [...] }
    ]
  }
}
```
`kind`: `book | chapter | section | paragraph`. Všechny uzly mají stabilní `id`.

### words.json
```json
{
  "nodes": {
    "parva_01": {
      "terms": [
        {"term": "dharma", "score": 0.94, "count": 1482, "kind": "word"},
        {"term": "Arjuna", "score": 0.88, "count": 923, "kind": "entity"},
        {"term": "pět bratrů", "score": 0.71, "count": 44, "kind": "phrase"}
      ]
    }
  }
}
```
`kind`: `word | phrase | entity` — slouží k vizuálnímu odlišení bublin.

### summaries.json
```json
{
  "locales": ["cs", "en"],
  "nodes": {
    "root": { "cs": "Mahábhárata je...", "en": "The Mahābhārata is..." },
    "parva_01": { "cs": "Ādi Parva popisuje...", "en": "..." }
  }
}
```

### embeddings (binárně na serveru, ne v app)
- `embeddings.bin`: flat `uint32 chunk_id + float32[768]`
- `embeddings_meta.jsonl`: `{chunk_id, node_id, text_snippet, byte_start, byte_end}`
- **Index zůstává na serveru** — app ho nenačítá. RAG call = server si udělá nearest-neighbour sám.

---

## Drift DB schema (Flutter)

```
books     (slug PK, title, source_language, script, pipeline_version, generated_at, downloaded_at)
nodes     (id PK, book_slug FK, kind, label, parent_id, byte_start, byte_end, depth)
terms     (rowid, node_id FK, book_slug, term, score, count, kind)
          INDEX(node_id, score DESC), INDEX(book_slug, term)
summaries (node_id, locale, content) PK(node_id, locale)
```

Klíčová query pro filtrování v Panel 1:
```sql
SELECT DISTINCT n.id
FROM nodes n
JOIN terms t1 ON t1.node_id = n.id AND t1.term = 'dharma'
JOIN terms t2 ON t2.node_id = n.id AND t2.term = 'Arjuna'
WHERE n.book_slug = 'mahabharata' AND n.depth = 2
```
Tato multi-join query je důvod pro Drift (ne Hive).

---

## App state (Riverpod)

```dart
@freezed
class ReaderState with _$ReaderState {
  const factory ReaderState({
    required String bookSlug,
    required List<String> currentPath,   // [root, parva_01, adhyaya_003]
    required Set<String> selectedWords,  // filter set
    required Set<String> pinnedWords,    // vždy viditelné v cloudu i po re-generaci
    required AsyncValue<String> ragSummary,
    @Default(false) bool isRagActive,
    @Default(false) bool isOffline,
  }) = _ReaderState;
}
```

**Přechody:**
- `toggleWord(term)` → přidá/odebere ze `selectedWords`, přidá do `pinnedWords`, debounce 600ms → RAG
- `navigateTo(nodeId)` → aktualizuje `currentPath`, **zachovává** `selectedWords` (kontext přetrvává)
- `navigateUp()` → pop z `currentPath`, zachovává `selectedWords`
- `clearWords()` → vyprázdní oba sets, zruší RAG

**Derived providers:**
```
currentNodeProvider      → String (last in currentPath)
currentTermsProvider     → AsyncValue<List<WordTerm>> (z Drift)
filteredTreeProvider     → AsyncValue<TreeNode?> (SQL multi-join)
currentSummaryProvider   → String? (předvypočtený, z Drift)
ragDebounceProvider      → debounce timer reference
```

---

## Tří-panelové UI

### Layout
```dart
Column(children: [
  Flexible(flex: 15, child: RepaintBoundary(child: NavPanel())),
  Flexible(flex: 55, child: RepaintBoundary(child: WordCloudPanel())),
  Flexible(flex: 30, child: RepaintBoundary(child: SummaryPanel())),
])
```
Na obrazovkách < 600 dp výšky: poměr 10/50/40.

### Panel 1 — NavPanel
- Breadcrumb: horizontální `SingleChildScrollView` s `FilterChip` widgety, jeden per úroveň v `currentPath`
- Sourozenci: druhý řádek s `Wrap` sourozeneckých uzlů, filtrovaný `filteredTreeProvider`
- Greyed-out (opacity 0.35) sekce, které **neprošly** filtrem — viditelné, ale neaktivní
- Empty state: "Žádná sekce neobsahuje všechna vybraná slova" + chip "Zrušit filtry"

### Panel 2 — WordCloudPanel
**Layout**: deterministic row-fill (ne random spiral):
1. Seřadit 50 termů podle `score` DESC
2. Font size = `lerp(12.0, 32.0, score)`
3. Plnit řádky zleva, největší první, min tap target 44×44 dp
4. `CustomMultiChildLayout` nebo `Wrap` s fixed-size containers

**Bubble** (`WordBubble`):
```dart
AnimatedContainer(
  duration: Duration(milliseconds: 200),
  decoration: BoxDecoration(
    color: isSelected ? primary : surfaceVariant,
    border: isSelected ? Border.all(color: secondary, width: 2) : null,
    borderRadius: BorderRadius.circular(20),
  ),
  child: Text(term, style: TextStyle(fontSize: computedSize)),
)
```

**Pinch-out = navigateUp()**: `InteractiveViewer` kolem cloudu, `minScale: 0.9`, `maxScale: 1.0`. V `onInteractionEnd` — pokud 2 prsty + scale < 0.95 → `navigateUp()`.

**Pinned words**: vybraná slova jsou vždy zobrazena jako první row s odlišnou barvou (i po re-generaci cloudu při změně navigační pozice).

**"+ more" chip**: otevře `DraggableScrollableSheet` s celým slovníkem + free-text search input.

**Multi-script fonty**: `fontFamilyFallback: ['NotoSansDevanagari', 'NotoSansHebrew', 'NotoSansCJK', 'NotoSans']` — Flutter text shaper vybere správný glyph range automaticky.

### Panel 3 — SummaryPanel
**Offline / bez filtru**: `currentSummaryProvider` (Drift) → `flutter_smooth_markdown` (staticky)

**RAG mód** (online + selectedWords neprázdné):
- `RagIndicator` badge "AI – živě generováno" vpravo nahoře
- `flutter_smooth_markdown` v streaming módu (přijímá `Stream<String>`)
- Přechod: old summary fade-out 300ms → skeleton → stream začne
- Fallback (offline): `SnackBar("Server není dostupný – zobrazuji předem vypočtený souhrn")`

**RAG SSE client**:
```dart
Stream<String> queryRag({required CancelToken cancelToken, ...}) async* {
  final response = await _dio.post('/api/v1/books/$slug/rag',
    data: {node_id, selected_words, locale, top_k: 8},
    options: Options(responseType: ResponseType.stream),
    cancelToken: cancelToken);
  await for (final chunk in response.data.stream) {
    // parse SSE data: lines → yield tokens
  }
}
```
Debounce 600ms, `CancelToken` zruší in-flight request okamžitě při další změně.

---

## Tech stack (Flutter)

| Concern | Package |
|---|---|
| State | `riverpod` + `riverpod_annotation` + `riverpod_generator` |
| Models | `freezed` + `json_serializable` |
| DB | `drift` + `drift_flutter` |
| HTTP | `dio` (progress, streaming, cancel tokens) |
| Markdown | `flutter_smooth_markdown` (streaming) |
| Navigation | `go_router` |
| Connectivity | `connectivity_plus` + `internet_connection_checker_plus` |
| Fonts | `google_fonts` (Noto family) |
| Archive | `archive` (unzip bundle v isolate) |
| Preferences | `shared_preferences` |
| Localisation | `flutter_localizations` + `intl` |

---

## Folder structure (feature-first)

```
lib/
  main.dart
  app/              (app.dart, router.dart, theme.dart)
  core/
    network/        (dio_client.dart, connectivity_service.dart)
    database/       (app_database.dart + generated)
    models/         (book_manifest.dart, word_term.dart, summary_node.dart, rag_response.dart)
  features/
    library/        (screens + widgets pro seznam/stažení knih)
    reader/
      data/         (reader_repository.dart, rag_api.dart)
      domain/       (reader_state.dart, filter_logic.dart)
      presentation/
        reader_screen.dart
        panels/     (nav_panel.dart, word_cloud_panel.dart, summary_panel.dart)
        widgets/    (breadcrumb_bar.dart, word_bubble.dart, cloud_layout.dart, rag_indicator.dart)
    settings/
  l10n/             (app_cs.arb, app_en.arb)
```

---

## Pipeline extension (Go — nové stages)

Přidat po existující Czech-summary stage:

1. **`stage_hierarchy.go`**: parsuje strukturu textu → `manifest.json` s nested tree + byte ranges
2. **`stage_tfidf.go`**: per-node TF-IDF + NER přes Qwen → `words.json`; Unicode-aware tokenizer (`golang.org/x/text/unicode/norm`)
3. **`stage_summaries.go`**: bottom-up summarizace (paragraph → section → chapter → book), cs + en locale → `summaries.json`
4. **`stage_embeddings.go`**: sliding window chunks → embedding call → `embeddings.bin` + `embeddings_meta.jsonl`
5. **`stage_bundle.go`**: zip všeho → `bundle.zip` + SHA-256

**FastAPI rozšíření**:
- `GET /api/v1/books` — seznam s mtime pro update-check
- `GET /api/v1/books/{slug}/bundle.zip` — streaming download, `X-Bundle-SHA256` header
- `POST /api/v1/books/{slug}/rag` → SSE (embed query → FAISS → Qwen stream)

---

## Fázovaný build

### Fáze 1 — MVP (offline, jedna kniha)
- Flutter scaffold + pubspec + build_runner
- Freezed modely + Drift schema
- Manuální import bundle ze assets (zip v assets → unzip → Drift)
- `ReaderState` s currentPath + selectedWords
- Všechny tři panely: statické (bez RAG, bez server)
- Go pipeline: stage_hierarchy + stage_tfidf pro jednu testovací knihu

### Fáze 2 — Server integrace (stahování knih z DGX)
- Settings screen (server URL, locale)
- `BooksApi` + `BooksRepository` (download + SHA verify + unzip v isolate)
- Library screen s progress indikátory
- `go_router` routes
- FastAPI file server endpoint

### Fáze 3 — RAG streaming (živé AI souhrny)
- FastAPI RAG endpoint + embedding index
- `RagApi.queryRag()` se SSE + debounce + CancelToken
- SummaryPanel streaming mode
- Offline fallback

### Fáze 4 — Polish
- Lokalizace (cs/en arb files)
- "More words" bottom sheet + free-text search
- Empty filter state UI
- Dark mode
- Accessibility (44dp targets, semantic labels)
- Performance profiling (DevTools)

### Fáze 5 — Backlog
- Inline reader mode (raw text přes byte_start/byte_end)
- Cross-book search
- User annotations (nová Drift tabulka)
- iPad split-view layout (horizontální 3 panely)
- Auth pro DGX server

---

## Kritické soubory pro implementaci

- `lib/features/reader/domain/reader_state.dart` — ReaderState freezed model + notifier (vše ostatní derivuje z tohoto)
- `lib/core/database/app_database.dart` — Drift schema + multi-join SQL query pro filtrování sekcí
- `lib/features/reader/presentation/panels/word_cloud_panel.dart` — custom layout + pinch gesture + pinned words
- `lib/features/reader/data/rag_api.dart` — Dio SSE streaming s CancelToken
- `pipeline/stage_tfidf.go` — kvalita word cloudu závisí na tomto výstupu

---

## Verifikace

1. **Unit testy**: `filter_logic.dart` (pure functions na filtrování tree), Drift queries (mock DB)
2. **Widget testy**: WordCloudPanel tapování → ReaderState aktualizace, SummaryPanel switching mezi static/streaming
3. **Integration test**: stáhnout bundle.zip z lokálního mock serveru → unzip → zobrazit reader → vybrat 2 slova → ověřit, že filteredTreeProvider vrátí správné sekce
4. **E2E na zařízení**: Flutter integration_test s fyzickým telefonem (Android/iOS), reálná kniha (Dao De Jing je nejmenší — 81 kapitol, rychlé zpracování)
5. **Pipeline test**: spustit stage_tfidf pro `dao-de-jing` → ověřit, že `words.json` obsahuje smysluplné čínské znaky/pojmy, ne stop-words
