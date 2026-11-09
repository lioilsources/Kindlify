// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Geen enkele sectie bevat alle geselecteerde woorden';

  @override
  String get navClearFilters => 'Filters wissen';

  @override
  String cloudMoreWords(int count) {
    return '+$count meer';
  }

  @override
  String get cloudSearchHint => 'Termen zoeken...';

  @override
  String get summaryAiBadge => 'AI · live';

  @override
  String get summaryOfflineFallback =>
      'Server niet beschikbaar — vooraf berekende samenvatting wordt getoond';

  @override
  String get libraryTitle => 'Bibliotheek';

  @override
  String get libraryEmpty => 'Nog geen boeken';

  @override
  String get libraryLoadDemo => 'Demoboek laden';

  @override
  String get libraryLoading => 'Boek laden…';

  @override
  String get settingsTitle => 'Instellingen';

  @override
  String get settingsServerUrl => 'Server-URL';

  @override
  String get settingsLocale => 'Taal';

  @override
  String get settingsLocaleCs => 'Tsjechisch';

  @override
  String get settingsLocaleEn => 'Engels';

  @override
  String get readerZoomOutHint => 'Knijp om uit te zoomen';

  @override
  String errorMessage(String message) {
    return 'Fout: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title laden';
  }

  @override
  String get navClear => 'Wissen';

  @override
  String get readerShowSummary => 'Samenvatting';

  @override
  String get readerShowOriginal => 'Origineel';

  @override
  String get summaryPickBook => 'Kies een boek om te beginnen';

  @override
  String get summaryUnavailable => 'Samenvatting niet beschikbaar';

  @override
  String get originalTextMissing =>
      'Geen originele tekst voor deze passage — kies een hoofdstuk';

  @override
  String get cloudNoTerms => 'Geen termen';

  @override
  String get settingsServerSection => 'Server';

  @override
  String get settingsSummaryLanguage => 'Taal van de samenvattingen';
}
