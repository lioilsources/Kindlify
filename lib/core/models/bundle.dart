import 'book_manifest.dart';
import 'word_term.dart';

/// Combined bundle loaded from assets or downloaded from server.
/// Parsed manually (no code generation needed — custom nested JSON structure).
class BookBundle {
  const BookBundle({
    required this.manifest,
    required this.words,
    required this.summaries,
    this.texts = const {},
  });

  final BookManifest manifest;
  final WordsBundle words;

  /// summaries[nodeId][locale] = summary text
  final Map<String, Map<String, String>> summaries;

  /// texts[nodeId] = original-language text. Optional: bundles from the
  /// library carry it for shorter works (WorldLibraryProject export, pg-2).
  final Map<String, String> texts;

  factory BookBundle.fromJson(Map<String, dynamic> json) {
    final manifest = BookManifest.fromJson(
      json['manifest'] as Map<String, dynamic>,
    );
    final words = WordsBundle.fromJson(json['words'] as Map<String, dynamic>);
    final rawSummaries = json['summaries'] as Map<String, dynamic>;
    final summaries = rawSummaries.map((nodeId, locales) {
      final localeMap = (locales as Map<String, dynamic>).map(
        (locale, text) => MapEntry(locale, text as String),
      );
      return MapEntry(nodeId, localeMap);
    });
    final rawTexts = json['texts'] as Map<String, dynamic>? ?? const {};
    final texts = rawTexts.map((id, text) => MapEntry(id, text as String));
    return BookBundle(
      manifest: manifest,
      words: words,
      summaries: summaries,
      texts: texts,
    );
  }
}
