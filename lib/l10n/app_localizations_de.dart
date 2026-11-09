// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Kein Abschnitt enthält alle ausgewählten Wörter';

  @override
  String get navClearFilters => 'Filter zurücksetzen';

  @override
  String cloudMoreWords(int count) {
    return '+$count weitere';
  }

  @override
  String get cloudSearchHint => 'Begriffe suchen...';

  @override
  String get summaryAiBadge => 'KI · live';

  @override
  String get summaryOfflineFallback =>
      'Server nicht erreichbar — vorberechnete Zusammenfassung wird angezeigt';

  @override
  String get libraryTitle => 'Bibliothek';

  @override
  String get libraryEmpty => 'Noch keine Bücher';

  @override
  String get libraryLoadDemo => 'Beispielbuch laden';

  @override
  String get libraryLoading => 'Buch wird geladen…';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get settingsServerUrl => 'Server-URL';

  @override
  String get settingsLocale => 'Sprache';

  @override
  String get settingsLocaleCs => 'Tschechisch';

  @override
  String get settingsLocaleEn => 'Englisch';

  @override
  String get readerZoomOutHint => 'Zum Verkleinern zusammenziehen';

  @override
  String errorMessage(String message) {
    return 'Fehler: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title laden';
  }

  @override
  String get navClear => 'Zurücksetzen';

  @override
  String get readerShowSummary => 'Zusammenfassung';

  @override
  String get readerShowOriginal => 'Original';

  @override
  String get summaryPickBook => 'Wähle ein Buch, um zu beginnen';

  @override
  String get summaryUnavailable => 'Keine Zusammenfassung verfügbar';

  @override
  String get originalTextMissing =>
      'Zu dieser Stelle gibt es keinen Originaltext — wähle ein Kapitel';

  @override
  String get cloudNoTerms => 'Keine Begriffe';

  @override
  String get settingsServerSection => 'Server';

  @override
  String get settingsSummaryLanguage => 'Sprache der Zusammenfassungen';
}
