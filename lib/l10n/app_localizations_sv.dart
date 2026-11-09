// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Inget avsnitt innehåller alla valda ord';

  @override
  String get navClearFilters => 'Rensa filter';

  @override
  String cloudMoreWords(int count) {
    return '+$count till';
  }

  @override
  String get cloudSearchHint => 'Sök termer...';

  @override
  String get summaryAiBadge => 'AI · live';

  @override
  String get summaryOfflineFallback =>
      'Servern är inte tillgänglig — visar förberäknad sammanfattning';

  @override
  String get libraryTitle => 'Bibliotek';

  @override
  String get libraryEmpty => 'Inga böcker ännu';

  @override
  String get libraryLoadDemo => 'Läs in demobok';

  @override
  String get libraryLoading => 'Läser in bok…';

  @override
  String get settingsTitle => 'Inställningar';

  @override
  String get settingsServerUrl => 'Serverns URL';

  @override
  String get settingsLocale => 'Språk';

  @override
  String get settingsLocaleCs => 'Tjeckiska';

  @override
  String get settingsLocaleEn => 'Engelska';

  @override
  String get readerZoomOutHint => 'Nyp för att zooma ut';

  @override
  String errorMessage(String message) {
    return 'Fel: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Läs in $title';
  }

  @override
  String get navClear => 'Rensa';

  @override
  String get readerShowSummary => 'Sammanfattning';

  @override
  String get readerShowOriginal => 'Original';

  @override
  String get summaryPickBook => 'Välj en bok för att börja';

  @override
  String get summaryUnavailable => 'Ingen sammanfattning tillgänglig';

  @override
  String get originalTextMissing =>
      'Ingen originaltext för det här stället — välj ett kapitel';

  @override
  String get cloudNoTerms => 'Inga termer';

  @override
  String get settingsServerSection => 'Server';

  @override
  String get settingsSummaryLanguage => 'Sammanfattningarnas språk';
}
