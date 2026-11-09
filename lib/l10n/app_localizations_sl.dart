// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Noben razdelek ne vsebuje vseh izbranih besed';

  @override
  String get navClearFilters => 'Počisti filtre';

  @override
  String cloudMoreWords(int count) {
    return '+$count več';
  }

  @override
  String get cloudSearchHint => 'Išči izraze...';

  @override
  String get summaryAiBadge => 'UI · v živo';

  @override
  String get summaryOfflineFallback =>
      'Strežnik ni na voljo — prikazan je vnaprej izračunan povzetek';

  @override
  String get libraryTitle => 'Knjižnica';

  @override
  String get libraryEmpty => 'Še ni knjig';

  @override
  String get libraryLoadDemo => 'Naloži predstavitveno knjigo';

  @override
  String get libraryLoading => 'Nalaganje knjige…';

  @override
  String get settingsTitle => 'Nastavitve';

  @override
  String get settingsServerUrl => 'URL strežnika';

  @override
  String get settingsLocale => 'Jezik';

  @override
  String get settingsLocaleCs => 'Češčina';

  @override
  String get settingsLocaleEn => 'Angleščina';

  @override
  String get readerZoomOutHint => 'Uščipnite za pomanjšanje';

  @override
  String errorMessage(String message) {
    return 'Napaka: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Naloži: $title';
  }

  @override
  String get navClear => 'Počisti';

  @override
  String get readerShowSummary => 'Povzetek';

  @override
  String get readerShowOriginal => 'Izvirnik';

  @override
  String get summaryPickBook => 'Za začetek izberite knjigo';

  @override
  String get summaryUnavailable => 'Povzetek ni na voljo';

  @override
  String get originalTextMissing =>
      'Za to mesto ni izvirnega besedila — izberite poglavje';

  @override
  String get cloudNoTerms => 'Ni izrazov';

  @override
  String get settingsServerSection => 'Strežnik';

  @override
  String get settingsSummaryLanguage => 'Jezik povzetkov';
}
