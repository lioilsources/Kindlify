// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Nijedan odjeljak ne sadrži sve odabrane riječi';

  @override
  String get navClearFilters => 'Očisti filtre';

  @override
  String cloudMoreWords(int count) {
    return '+$count više';
  }

  @override
  String get cloudSearchHint => 'Pretraži pojmove...';

  @override
  String get summaryAiBadge => 'AI · uživo';

  @override
  String get summaryOfflineFallback =>
      'Poslužitelj nije dostupan — prikazuje se unaprijed izračunati sažetak';

  @override
  String get libraryTitle => 'Knjižnica';

  @override
  String get libraryEmpty => 'Još nema knjiga';

  @override
  String get libraryLoadDemo => 'Učitaj oglednu knjigu';

  @override
  String get libraryLoading => 'Učitavanje knjige…';

  @override
  String get settingsTitle => 'Postavke';

  @override
  String get settingsServerUrl => 'URL poslužitelja';

  @override
  String get settingsLocale => 'Jezik';

  @override
  String get settingsLocaleCs => 'Češki';

  @override
  String get settingsLocaleEn => 'Engleski';

  @override
  String get readerZoomOutHint => 'Stisnite prste za smanjenje';

  @override
  String errorMessage(String message) {
    return 'Pogreška: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Učitaj: $title';
  }

  @override
  String get navClear => 'Očisti';

  @override
  String get readerShowSummary => 'Sažetak';

  @override
  String get readerShowOriginal => 'Izvornik';

  @override
  String get summaryPickBook => 'Odaberite knjigu za početak';

  @override
  String get summaryUnavailable => 'Sažetak nije dostupan';

  @override
  String get originalTextMissing =>
      'Za ovo mjesto nema izvornog teksta — odaberite poglavlje';

  @override
  String get cloudNoTerms => 'Nema pojmova';

  @override
  String get settingsServerSection => 'Poslužitelj';

  @override
  String get settingsSummaryLanguage => 'Jezik sažetaka';
}
