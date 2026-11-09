// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Nicio secțiune nu conține toate cuvintele selectate';

  @override
  String get navClearFilters => 'Șterge filtrele';

  @override
  String cloudMoreWords(int count) {
    return '+încă $count';
  }

  @override
  String get cloudSearchHint => 'Caută termeni...';

  @override
  String get summaryAiBadge => 'IA · live';

  @override
  String get summaryOfflineFallback =>
      'Server indisponibil — se afișează rezumatul precalculat';

  @override
  String get libraryTitle => 'Bibliotecă';

  @override
  String get libraryEmpty => 'Încă nu există cărți';

  @override
  String get libraryLoadDemo => 'Încarcă cartea demonstrativă';

  @override
  String get libraryLoading => 'Se încarcă cartea…';

  @override
  String get settingsTitle => 'Setări';

  @override
  String get settingsServerUrl => 'URL server';

  @override
  String get settingsLocale => 'Limbă';

  @override
  String get settingsLocaleCs => 'Cehă';

  @override
  String get settingsLocaleEn => 'Engleză';

  @override
  String get readerZoomOutHint => 'Ciupiți pentru a micșora';

  @override
  String errorMessage(String message) {
    return 'Eroare: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Încarcă $title';
  }

  @override
  String get navClear => 'Șterge';

  @override
  String get readerShowSummary => 'Rezumat';

  @override
  String get readerShowOriginal => 'Original';

  @override
  String get summaryPickBook => 'Alegeți o carte pentru a începe';

  @override
  String get summaryUnavailable => 'Rezumat indisponibil';

  @override
  String get originalTextMissing =>
      'Nu există text original pentru acest pasaj — alegeți un capitol';

  @override
  String get cloudNoTerms => 'Niciun termen';

  @override
  String get settingsServerSection => 'Server';

  @override
  String get settingsSummaryLanguage => 'Limba rezumatelor';
}
