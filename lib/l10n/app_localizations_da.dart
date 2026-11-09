// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Ingen afsnit indeholder alle de valgte ord';

  @override
  String get navClearFilters => 'Ryd filtre';

  @override
  String cloudMoreWords(int count) {
    return '+$count mere';
  }

  @override
  String get cloudSearchHint => 'Søg i termer...';

  @override
  String get summaryAiBadge => 'AI · live';

  @override
  String get summaryOfflineFallback =>
      'Serveren er utilgængelig — viser forudberegnet resumé';

  @override
  String get libraryTitle => 'Bibliotek';

  @override
  String get libraryEmpty => 'Ingen bøger endnu';

  @override
  String get libraryLoadDemo => 'Indlæs demobog';

  @override
  String get libraryLoading => 'Indlæser bog…';

  @override
  String get settingsTitle => 'Indstillinger';

  @override
  String get settingsServerUrl => 'Serverens URL';

  @override
  String get settingsLocale => 'Sprog';

  @override
  String get settingsLocaleCs => 'Tjekkisk';

  @override
  String get settingsLocaleEn => 'Engelsk';

  @override
  String get readerZoomOutHint => 'Knib for at zoome ud';

  @override
  String errorMessage(String message) {
    return 'Fejl: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Indlæs $title';
  }

  @override
  String get navClear => 'Ryd';

  @override
  String get readerShowSummary => 'Resumé';

  @override
  String get readerShowOriginal => 'Original';

  @override
  String get summaryPickBook => 'Vælg en bog for at begynde';

  @override
  String get summaryUnavailable => 'Resumé ikke tilgængeligt';

  @override
  String get originalTextMissing =>
      'Ingen originaltekst til denne passage — vælg et kapitel';

  @override
  String get cloudNoTerms => 'Ingen termer';

  @override
  String get settingsServerSection => 'Server';

  @override
  String get settingsSummaryLanguage => 'Resuméernes sprog';
}
