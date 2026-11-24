# PLAN — obálky knih

Cíl: každé dílo v knihovně (1 067 v1.4.3) dostane vlastní obálku. Knihovna
se z dlouhého seznamu tlačítek „Načíst …" změní na mřížku obálek.

## Výchozí stav

- `library_screen.dart`: stažené knihy jsou `ListTile` (název, jazyk · písmo)
  a pod nimi jedno tlačítko „Načíst <label>" za každý bundle z `index.json`.
  Při 1 067 dílech je to nepoužitelný seznam. Obálky bez nové knihovny nemají
  kam jít.
- `index.json` drží `asset`, `slug`, `label`, `sourceLanguage`, `nodes`,
  `pipelineVersion`. O obálce zatím nic.
- Bundly mají 187 MB a appka je už teď velká, takže obálky musí být malé.
- WorldLibraryProject má ke každému dílu `name_cs`, autora, tradici, období,
  formu, `summary_short` a `summary_medium` a témata. To stačí na prompt.

## Rozhodnutí (schválil Olin 2026-11-24)

1. **Text na obálce kreslí Flutter, ne model.** Obrazový model kazí diakritiku,
   řečtinu a pálí. Obrázek je jen ilustrace, název, autor a jazyk se sázejí
   v appce. Jeden obrázek tak poslouží i pro jinou lokalizaci.
2. **Jednotný styl edice: dřevoryt**, aby 1 067 obálek vypadalo jako jedna
   řada. Omezená paleta podle tradice (řecká, latinská, pálijská, indická,
   čínská, severská…). Barva pruhu
   s názvem podle jazyka originálu.
3. **Velikost v appce:** 400×600 WebP, q≈75, asi 25–35 kB, celkem kolem 35 MB.
   Zdroj 832×1248 (Qwen-Image) se archivuje mimo appku pro pozdější větší
   velikosti.
4. **Žádné portréty skutečných lidí ani kopie existujících vydání.** Jen
   scéna nebo motiv z díla. Generované obrázky, bez cizí licence.

## Kroky

### 1. Prompty (WorldLibraryProject, LLM na L40S)

- `rag/cover_prompts.py`, dávka jako `enrich_works.py` (resume přes `input_sha`).
- Vstup: název, autor, tradice, období, forma, `summary_medium`, témata.
- Výstup do `works.cover_prompt` (anglicky, 40–70 slov: motiv, kompozice,
  žádný text) a `works.cover_palette` (tradice → paleta).
- LLM na L40S (`qwen36` na :8005, profil A/B/K nebo vlastní okno, max 16k
  kontextu): 1 067 krátkých promptů jednou dávkou, řádově 30 min. Všechny
  prompty se udělají předem, ne střídavě s obrázky. LLM a ComfyUI
  (profil D) neběží současně.

### 2. Pilot obrázků (L40S-MacBook, ComfyUI + Qwen-Image)

- 24 děl napříč tradicemi (grc, lat, pi, sa, zh, non, ang, egy), dřevoryt,
  2 seedy na dílo.
- Olin potvrdí vzhled na kontaktním archu, pak celá dávka.

### 3. Celá dávka

- Fronta qctl nemá režim filler (STOP/READY), umí jen úlohy `cmd`/`window`.
  Řadí podle nejkratšího `est_min`, ne FIFO. Proto 6–7 dávek po 150–200
  obálkách (každá ~70–90 min), zařazených za sebou, aby se mezi ně vešly
  cizí úlohy. Runner přeskakuje hotové obrázky, takže cancel a znovuzařazení
  ztratí nanejvýš jeden rozpracovaný obrázek.
- 1 067 × 1 obrázek (podle pilotu případně 2 seedy a výběr), 832×1248 PNG.
- Výstup do archivu na YOTTA podle `work_id` a manifest `covers.jsonl`
  (work_id, seed, prompt_sha, model).
- Rychlá kontrola: kontaktní arch po 100 kusech, rozbité nebo s textem znovu
  s jiným seedem.

### 4. Export (WorldLibraryProject)

- `kindlify_sync.py`: zmenší obálku na 400×600 WebP do
  `Kindlify/assets/covers/<asset>.webp` a přidá do `index.json` pole `cover`.
  Bez obálky se pole vynechá.
- `validate_bundle()` beze změny, obálka není součást bundlu.

### 5. Appka (Kindlify)

- `index.json` → model `CatalogEntry` (asset, slug, label, jazyk, cover?).
- Nová knihovna: `GridView` obálek (2 sloupce na telefonu, víc na tabletu
  a desktopu). Filtr podle jazyka a hledání v názvu. Stažené knihy nahoře.
- `BookCover` widget: obrázek + pruh s názvem a autorem v barvě jazyka.
  Bez obrázku jen typografická obálka (stejný widget, výplň barvou), takže
  appka funguje i před dokončením dávky.
- Klepnutí: nestažená kniha se načte z assetu (dnešní `_loadDemo`) a otevře.
- Testy: widget test mřížky a fallbacku, integrační test „najdi a otevři
  dílo z mřížky".

### 6. Release

- Release jako obvykle (TestFlight, Firebase, olin.now) a nové screenshoty
  knihovny do storu.

## Odhad

| Krok | Kde | Čas |
|---|---|---|
| Prompty | L40S, qwen36 | ~0,5 h GPU |
| Pilot | L40S, Qwen-Image | ~0,5 h |
| Dávka | L40S, Qwen-Image (fp8, 20 kroků, ~20 s/obr.) | ~6–7,5 h GPU v 6–7 dávkách |
| Export | Mac | minuty |
| Appka | Kindlify | 1 PR |

Krok 5 nezávisí na obrázcích (typografický fallback), může běžet souběžně
s kroky 1–3.

## Odpovědi Olina (2026-11-24)

1. Styl: dřevoryt.
2. ~35 MB obálek navíc: ano.
3. Mřížka místo seznamu: ano.
