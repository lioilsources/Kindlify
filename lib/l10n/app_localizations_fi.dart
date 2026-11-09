// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Mikään osio ei sisällä kaikkia valittuja sanoja';

  @override
  String get navClearFilters => 'Tyhjennä suodattimet';

  @override
  String cloudMoreWords(int count) {
    return '+$count lisää';
  }

  @override
  String get cloudSearchHint => 'Hae termejä...';

  @override
  String get summaryAiBadge => 'Tekoäly · live';

  @override
  String get summaryOfflineFallback =>
      'Palvelin ei ole saatavilla — näytetään valmiiksi laskettu tiivistelmä';

  @override
  String get libraryTitle => 'Kirjasto';

  @override
  String get libraryEmpty => 'Ei vielä kirjoja';

  @override
  String get libraryLoadDemo => 'Lataa esimerkkikirja';

  @override
  String get libraryLoading => 'Ladataan kirjaa…';

  @override
  String get settingsTitle => 'Asetukset';

  @override
  String get settingsServerUrl => 'Palvelimen URL';

  @override
  String get settingsLocale => 'Kieli';

  @override
  String get settingsLocaleCs => 'Tšekki';

  @override
  String get settingsLocaleEn => 'Englanti';

  @override
  String get readerZoomOutHint => 'Loitonna nipistämällä';

  @override
  String errorMessage(String message) {
    return 'Virhe: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Lataa $title';
  }

  @override
  String get navClear => 'Tyhjennä';

  @override
  String get readerShowSummary => 'Tiivistelmä';

  @override
  String get readerShowOriginal => 'Alkuteksti';

  @override
  String get summaryPickBook => 'Aloita valitsemalla kirja';

  @override
  String get summaryUnavailable => 'Tiivistelmää ei ole saatavilla';

  @override
  String get originalTextMissing =>
      'Tälle kohdalle ei ole alkutekstiä — valitse luku';

  @override
  String get cloudNoTerms => 'Ei termejä';

  @override
  String get settingsServerSection => 'Palvelin';

  @override
  String get settingsSummaryLanguage => 'Tiivistelmien kieli';
}
