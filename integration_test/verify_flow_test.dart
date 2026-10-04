// Verification harness: drives the real app end-to-end on macOS against the
// real on-disk database and bundled assets. Run with:
//   flutter drive --driver=test_driver/integration_test.dart \
//     --target=integration_test/verify_flow_test.dart -d macos
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:kindlify/features/reader/presentation/widgets/word_bubble.dart';
import 'package:kindlify/main.dart' as app;

/// Pumps frames until [condition] is true (spinners keep animating, so
/// pumpAndSettle cannot be used).
Future<void> pumpUntil(
  WidgetTester tester,
  bool Function() condition, {
  Duration timeout = const Duration(seconds: 20),
  String description = '',
}) async {
  final end = DateTime.now().add(timeout);
  while (!condition()) {
    if (DateTime.now().isAfter(end)) {
      final visible = find
          .byType(Text)
          .evaluate()
          .map((e) => (e.widget as Text).data)
          .whereType<String>()
          .take(30)
          .join(' | ');
      fail('pumpUntil timed out: $description — visible texts: $visible');
    }
    await tester.pump(const Duration(milliseconds: 100));
  }
}

String currentSummary(WidgetTester tester) {
  // During AnimatedSwitcher transitions two Markdown widgets coexist —
  // the incoming one is last in the element tree.
  final elements = find.byType(Markdown).evaluate().toList();
  if (elements.isEmpty) return '';
  return (elements.last.widget as Markdown).data;
}

bool summaryContains(WidgetTester tester, String needle) =>
    currentSummary(tester).contains(needle);

Future<void> tapChip(WidgetTester tester, String label) async {
  final finder = find.text(label);
  if (finder.evaluate().isEmpty && label.startsWith('Kap. ')) {
    // Chapter chips live in a lazy horizontal ListView — scroll it until
    // the requested chip builds. Locate the list via any visible chapter chip.
    final scrollable = find
        .ancestor(
          of: find.textContaining('Kap. ').first,
          matching: find.byType(Scrollable),
        )
        .first;
    await tester.scrollUntilVisible(finder, 150,
        scrollable: scrollable, maxScrolls: 50);
  }
  await pumpUntil(tester, () => finder.evaluate().isNotEmpty,
      description: 'chip "$label" appears');
  await tester.ensureVisible(finder.first);
  await tester.tap(finder.first, warnIfMissed: false);
  await tester.pump(const Duration(milliseconds: 200));
}

Future<void> tapBubble(WidgetTester tester, String term) async {
  // The cloud briefly shows a spinner whenever reader state changes —
  // wait for the bubble to (re)build before tapping.
  final finder = find.widgetWithText(WordBubble, term);
  await pumpUntil(tester, () => finder.evaluate().isNotEmpty,
      description: 'bubble "$term" appears');
  await tester.tap(finder.first, warnIfMissed: false);
  await tester.pump(const Duration(milliseconds: 600));
}

/// Finds a `node://` markdown link by its text and invokes its tap
/// recognizer — the same recognizer a user's tap would hit.
Future<void> tapSummaryLink(WidgetTester tester, String linkText) async {
  TapGestureRecognizer? recognizer;
  for (final element in find.byType(RichText).evaluate()) {
    final richText = element.widget as RichText;
    richText.text.visitChildren((span) {
      if (span is TextSpan &&
          (span.text?.contains(linkText) ?? false) &&
          span.recognizer is TapGestureRecognizer) {
        recognizer = span.recognizer as TapGestureRecognizer;
        return false;
      }
      return true;
    });
    if (recognizer != null) break;
  }
  expect(recognizer, isNotNull, reason: 'link "$linkText" not found');
  recognizer!.onTap!();
  await tester.pump(const Duration(milliseconds: 200));
}

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  Future<void> shot(String name) async {
    try {
      await binding.takeScreenshot(name);
    } catch (e) {
      debugPrint('screenshot $name failed: $e');
    }
  }

  testWidgets('summary reacts to breadcrumb × intent; analects loads',
      (tester) async {
    app.main();
    await tester.pump(const Duration(seconds: 1));

    // --- Library: either the previously imported book tile (real user DB)
    // or an empty library with demo buttons (fresh container).
    await pumpUntil(
      tester,
      () =>
          find.text('Tao Te Ťing (道德經)').evaluate().isNotEmpty ||
          find.text('Načíst Tao Te Ťing').evaluate().isNotEmpty,
      description: 'library shows Tao Te Ťing tile or demo button',
    );
    await shot('01-library');
    final tile = find.text('Tao Te Ťing (道德經)');
    if (tile.evaluate().isNotEmpty) {
      debugPrint('STEP library: existing tile (pre-existing DB)');
      await tester.tap(tile);
    } else {
      debugPrint('STEP library: empty, loading demo bundle');
      await tester.tap(find.text('Načíst Tao Te Ťing'));
    }
    await tester.pump(const Duration(milliseconds: 300));

    // --- Reader: ensureFresh must re-import demo-1.1, then root summary.
    await pumpUntil(
      tester,
      () => summaryContains(tester, 'taoistické filozofie'),
      description: 'root summary appears after ensureFresh re-import',
    );
    debugPrint('STEP root summary: ${currentSummary(tester).substring(0, 80)}…');
    await shot('02-root-summary');

    // --- Chapter that had NO summary in demo-1.0 → proves re-import + data.
    await tapChip(tester, '道 Tao (1–37)');
    await pumpUntil(tester, () => summaryContains(tester, 'Kniha Taa'),
        description: 'section_tao summary');
    await tapChip(tester, 'Kap. 3 — Nevládnutí touze');
    await pumpUntil(
      tester,
      () => summaryContains(tester, 'Nevyzdvihovat schopné'),
      description: 'ch_03 summary (new in demo-1.1, no spinner)',
    );
    debugPrint('STEP ch_03 has authored summary');
    await shot('03-ch03-summary');

    // --- Intent present only in this chapter → "nowhere else" fallback.
    await tapBubble(tester, '欲 touha');
    await pumpUntil(
      tester,
      () => summaryContains(tester, 'jinde v knize nevyskytují'),
      description: 'ch_03 + 欲 touha shows nowhere-else fallback',
    );
    expect(summaryContains(tester, 'Nevyzdvihovat schopné'), isTrue);
    debugPrint('STEP nowhere-else fallback OK');
    // Deselect via the cloud bubble — a bare text finder could hit the
    // AppBar filter chip's label, which has no tap handler.
    await tapBubble(tester, '欲 touha');
    await pumpUntil(
      tester,
      () => !summaryContains(tester, 'jinde v knize nevyskytují'),
      description: '欲 touha deselected (fallback message gone)',
    );

    // --- Root + intent 水 voda → composite from whole book (ch_08 & ch_78).
    await tapChip(tester, 'Tao Te Ťing'); // breadcrumb root chip
    await pumpUntil(
      tester,
      () => find.text('水 voda').evaluate().isNotEmpty,
      description: 'root word cloud shows 水 voda',
    );
    await tapBubble(tester, '水 voda');
    await pumpUntil(
      tester,
      () =>
          summaryContains(tester, 'node://dao-de-jing:ch_08') &&
          summaryContains(tester, 'node://dao-de-jing:ch_78'),
      description: 'root+voda composite links ch_08 and ch_78',
    );
    debugPrint('STEP root+voda composite: ch_08 & ch_78 present');
    await shot('04-root-voda-composite');

    // --- Same intent at section_tao → only ch_08 (subtree scoping).
    await tapChip(tester, '道 Tao (1–37)');
    await pumpUntil(
      tester,
      () =>
          summaryContains(tester, 'node://dao-de-jing:ch_08') &&
          !summaryContains(tester, 'node://dao-de-jing:ch_78'),
      description: 'section_tao+voda composite scoped to ch_08 only',
    );
    debugPrint('STEP section_tao+voda: only ch_08 (subtree scoping works)');
    await shot('05-tao-voda-scoped');

    // --- Same intent at section_te → only ch_78 (different subtree).
    await tapChip(tester, 'Tao Te Ťing');
    await tapChip(tester, '德 Te (38–81)');
    await pumpUntil(
      tester,
      () =>
          summaryContains(tester, 'node://dao-de-jing:ch_78') &&
          !summaryContains(tester, 'node://dao-de-jing:ch_08'),
      description: 'section_te+voda composite scoped to ch_78 only',
    );
    debugPrint('STEP section_te+voda: only ch_78 (different composite)');

    // --- Leaf chapter + intent → own summary + related elsewhere.
    // Enter the chapter through the composite's node:// link — the
    // non-linear navigation path itself.
    await tapSummaryLink(tester, 'Kap. 78 — Voda překoná kámen');
    await pumpUntil(
      tester,
      () =>
          summaryContains(tester, 'měkčí než voda') &&
          summaryContains(tester, 'Související jinde v knize') &&
          summaryContains(tester, 'node://dao-de-jing:ch_08'),
      description: 'ch_78+voda shows own summary + related ch_08',
    );
    debugPrint('STEP leaf ch_78+voda: own summary + related ch_08');
    await shot('06-ch78-leaf-related');

    // --- Tap the node:// link → cross-tree jump with rebuilt breadcrumb.
    await tapSummaryLink(tester, 'Kap. 8 — Nejvyšší dobro je jako voda');
    await pumpUntil(
      tester,
      () =>
          summaryContains(tester, 'prospívá všem věcem') &&
          summaryContains(tester, 'node://dao-de-jing:ch_78'),
      description: 'jump to ch_08: own summary + related ch_78',
    );
    // Breadcrumb must now show the ch_08 ancestry (root > 道 Tao > Kap. 8).
    await pumpUntil(
      tester,
      () => find.text('道 Tao (1–37)').evaluate().isNotEmpty,
      description: 'breadcrumb rebuilt across tree after jump',
    );
    debugPrint('STEP node:// jump rebuilt breadcrumb to section_tao/ch_08');
    await shot('07-jumped-to-ch08');

    // --- Back to library, load the second demo book (Analects).
    await tester.pageBack();
    await tester.pump(const Duration(milliseconds: 500));
    await pumpUntil(
      tester,
      () => find.text('Načíst Hovory (Konfucius)').evaluate().isNotEmpty,
      description: 'library shows Analects demo button',
    );
    await tester.ensureVisible(find.text('Načíst Hovory (Konfucius)'));
    await tester.tap(find.text('Načíst Hovory (Konfucius)'));
    await tester.pump(const Duration(milliseconds: 500));
    await pumpUntil(
      tester,
      () => summaryContains(tester, 'Konfucia'),
      timeout: const Duration(seconds: 30),
      description: 'Analects root summary appears',
    );
    await pumpUntil(
      tester,
      () => find.text('仁 lidskost').evaluate().isNotEmpty,
      description: 'Analects word cloud shows terms',
    );
    debugPrint('STEP Analects imported and readable');
    await shot('08-analects-root');

    // --- Back to library, load a bundle exported from the library corpus
    // (rag/kindlify_sync.py), listed via assets/bundles/index.json.
    const exported = "Načíst Tao te ťing — Lao-c'";
    await tester.pageBack();
    await tester.pump(const Duration(milliseconds: 500));
    await pumpUntil(
      tester,
      () => find.text(exported).evaluate().isNotEmpty,
      description: 'library lists exported bundle from index.json',
    );
    // The index lists dozens of works; scroll the library list until the
    // button is actually on screen (ensureVisible alone missed it at 80).
    await tester.scrollUntilVisible(
      find.text(exported),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pump(const Duration(milliseconds: 300));
    final importWatch = Stopwatch()..start();
    await tester.tap(find.text(exported));
    await tester.pump(const Duration(milliseconds: 500));
    await pumpUntil(
      tester,
      () => summaryContains(tester, 'Dao de jing'),
      timeout: const Duration(seconds: 60),
      description: 'exported bundle root summary appears',
    );
    debugPrint('STEP exported bundle imported in ${importWatch.elapsedMilliseconds} ms');
    await pumpUntil(
      tester,
      () => find.widgetWithText(WordBubble, "Lao-c'").evaluate().isNotEmpty,
      description: 'exported bundle word cloud shows terms',
    );
    await pumpUntil(
      tester,
      () => find.textContaining('O nevyjádřitelné Cestě').evaluate().isNotEmpty,
      description: 'exported bundle shows Czech chapter headings',
    );
    debugPrint('STEP exported zh-daodejing readable (cloud + Czech chapters)');
  });
}
