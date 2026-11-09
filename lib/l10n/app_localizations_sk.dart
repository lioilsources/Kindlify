// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Žiadna sekcia neobsahuje všetky vybrané slová';

  @override
  String get navClearFilters => 'Zrušiť filtre';

  @override
  String cloudMoreWords(int count) {
    return '+$count ďalších';
  }

  @override
  String get cloudSearchHint => 'Hľadať termíny...';

  @override
  String get summaryAiBadge => 'AI · naživo';

  @override
  String get summaryOfflineFallback =>
      'Server nie je dostupný — zobrazuje sa vopred vypočítaný súhrn';

  @override
  String get libraryTitle => 'Knižnica';

  @override
  String get libraryEmpty => 'Zatiaľ žiadne knihy';

  @override
  String get libraryLoadDemo => 'Načítať ukážkovú knihu';

  @override
  String get libraryLoading => 'Načítava sa kniha…';

  @override
  String get settingsTitle => 'Nastavenia';

  @override
  String get settingsServerUrl => 'URL servera';

  @override
  String get settingsLocale => 'Jazyk';

  @override
  String get settingsLocaleCs => 'Čeština';

  @override
  String get settingsLocaleEn => 'Angličtina';

  @override
  String get readerZoomOutHint => 'Stiahnutím prstov oddialite';

  @override
  String errorMessage(String message) {
    return 'Chyba: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Načítať $title';
  }

  @override
  String get navClear => 'Zrušiť';

  @override
  String get readerShowSummary => 'Súhrn';

  @override
  String get readerShowOriginal => 'Originál';

  @override
  String get summaryPickBook => 'Vyberte knihu na začiatok';

  @override
  String get summaryUnavailable => 'Súhrn nie je k dispozícii';

  @override
  String get originalTextMissing =>
      'Pre toto miesto nie je text originálu — vyberte kapitolu';

  @override
  String get cloudNoTerms => 'Žiadne termíny';

  @override
  String get settingsServerSection => 'Server';

  @override
  String get settingsSummaryLanguage => 'Jazyk súhrnov';
}
