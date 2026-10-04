// Store screenshots from the real app: drives a few library works and saves
// PNGs of the rendered scene (real fonts, real data). The shell has no
// screen-recording permission and binding.takeScreenshot is not implemented
// on macOS, so frames are read straight from the render tree instead.
//
//   flutter drive --driver=test_driver/integration_test.dart \
//     --target=integration_test/screenshots_test.dart -d macos   # or an iOS simulator
//
// PNGs land in <app documents>/screenshots/, or in SHOTS_DIR when given as
// --dart-define=SHOTS_DIR=/abs/path (needed on the iOS simulator: flutter
// drive uninstalls the app, container included). STEP lines print the path.
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:kindlify/features/reader/presentation/widgets/word_bubble.dart';
import 'package:kindlify/main.dart' as app;
import 'package:path_provider/path_provider.dart';

import 'verify_flow_test.dart' show pumpUntil, currentSummary, tapBubble;

Future<void> capture(WidgetTester tester, String name) async {
  await tester.pump(const Duration(milliseconds: 900));
  final view = tester.binding.renderViews.first;
  final layer = view.debugLayer! as OffsetLayer;
  // The root layer already scales by devicePixelRatio, so the capture rect
  // is in physical pixels. Upscale only a 1× display, to 2× for the store.
  final dpr = view.flutterView.devicePixelRatio;
  final image = await layer.toImage(
    Offset.zero & (view.size * dpr),
    pixelRatio: dpr < 2 ? 2 / dpr : 1,
  );
  await tester.runAsync(() async {
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    const shotsDir = String.fromEnvironment('SHOTS_DIR');
    final dir = Directory(
      shotsDir.isNotEmpty
          ? shotsDir
          : '${(await getApplicationDocumentsDirectory()).path}/screenshots',
    );
    await dir.create(recursive: true);
    final file = File('${dir.path}/$name.png');
    await file.writeAsBytes(bytes!.buffer.asUint8List());
    debugPrint('STEP shot ${file.path} (${image.width}x${image.height})');
  });
}

/// A real summary on screen, not the "není k dispozici" placeholder.
bool hasSummary(WidgetTester tester) {
  final text = currentSummary(tester);
  return text.isNotEmpty && !text.contains('není k dispozici');
}

Future<void> openFromLibrary(WidgetTester tester, String label) async {
  final button = find.text('Načíst $label');
  final book = find.text(label);
  await pumpUntil(
    tester,
    () => button.evaluate().isNotEmpty || book.evaluate().isNotEmpty,
    description: 'library lists $label',
  );
  // Already imported books show as a tile; otherwise use the load button.
  final target = book.evaluate().isNotEmpty ? book : button;
  await tester.scrollUntilVisible(
    target,
    300,
    scrollable: find.byType(Scrollable).first,
  );
  await tester.pump(const Duration(milliseconds: 300));
  await tester.tap(target.first, warnIfMissed: false);
  await tester.pump(const Duration(milliseconds: 500));
  await pumpUntil(
    tester,
    () => find.byType(WordBubble).evaluate().isNotEmpty,
    timeout: const Duration(seconds: 60),
    description: '$label opened',
  );
}

Future<void> openChapter(WidgetTester tester, String headingPart) async {
  final chip = find.textContaining(headingPart);
  // Chapter chips live in a lazy horizontal ListView: scroll it (found via
  // the first chapter chip) until the wanted chip is built.
  final first = find.textContaining('1 — ');
  await pumpUntil(
    tester,
    () => first.evaluate().isNotEmpty,
    description: 'chapter chips',
  );
  if (chip.evaluate().isEmpty) {
    // Resolve the list once: the first chip scrolls away (and is disposed)
    // during the drag, so a finder relative to it would stop matching.
    final list = find.byWidget(
      find
          .ancestor(of: first.first, matching: find.byType(Scrollable))
          .evaluate()
          .first
          .widget,
    );
    await tester.scrollUntilVisible(
      chip,
      150,
      scrollable: list,
      maxScrolls: 60,
    );
  }
  await pumpUntil(
    tester,
    () => chip.evaluate().isNotEmpty,
    description: 'chapter chip $headingPart',
  );
  await tester.ensureVisible(chip.first);
  await tester.pump(const Duration(milliseconds: 300));
  await tester.tap(chip.first);
  await tester.pump(const Duration(milliseconds: 600));
  await pumpUntil(
    tester,
    () => hasSummary(tester),
    description: 'chapter summary $headingPart',
  );
}

Future<void> backToLibrary(WidgetTester tester) async {
  await tester.pageBack();
  await tester.pump(const Duration(milliseconds: 600));
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('store screenshots', (tester) async {
    app.main();
    await pumpUntil(
      tester,
      () => find.text('Kindlify').evaluate().isNotEmpty,
      description: 'library',
    );
    await tester.pump(const Duration(seconds: 1));
    await capture(tester, '01-library');

    // Plato's Republic: the word cloud as a filter over the whole work,
    // then a chapter.
    await openFromLibrary(tester, 'Ústava — Platón');
    await tapBubble(tester, 'spravedlnost');
    await pumpUntil(
      tester,
      () => hasSummary(tester),
      description: 'filtered summary',
    );
    await capture(tester, '02-republic-filter');
    await tester.tap(find.byTooltip('Zrušit filtry'));
    await tester.pump(const Duration(milliseconds: 600));
    await openChapter(tester, 'Výchova strážců');
    await capture(tester, '03-republic-chapter');
    await backToLibrary(tester);

    // Tao te ťing: whole-work summary and original-script terms.
    await openFromLibrary(tester, "Tao te ťing — Lao-c'");
    await pumpUntil(
      tester,
      () => hasSummary(tester),
      description: 'Tao summary',
    );
    await capture(tester, '04-daodejing');
    await backToLibrary(tester);

    // Vergil's Aeneid, book 4.
    await openFromLibrary(tester, 'Aeneis — Vergilius');
    await openChapter(tester, 'Dido a Aeneas');
    await capture(tester, '05-aeneid-dido');
  });
}
