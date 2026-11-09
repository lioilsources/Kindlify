// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Ingen avsnitt inneholder alle de valgte ordene';

  @override
  String get navClearFilters => 'Fjern filtre';

  @override
  String cloudMoreWords(int count) {
    return '+$count til';
  }

  @override
  String get cloudSearchHint => 'Søk etter termer...';

  @override
  String get summaryAiBadge => 'KI · direkte';

  @override
  String get summaryOfflineFallback =>
      'Serveren er utilgjengelig — viser forhåndsberegnet sammendrag';

  @override
  String get libraryTitle => 'Bibliotek';

  @override
  String get libraryEmpty => 'Ingen bøker ennå';

  @override
  String get libraryLoadDemo => 'Last inn demobok';

  @override
  String get libraryLoading => 'Laster inn bok…';

  @override
  String get settingsTitle => 'Innstillinger';

  @override
  String get settingsServerUrl => 'Server-URL';

  @override
  String get settingsLocale => 'Språk';

  @override
  String get settingsLocaleCs => 'Tsjekkisk';

  @override
  String get settingsLocaleEn => 'Engelsk';

  @override
  String get readerZoomOutHint => 'Klyp for å zoome ut';

  @override
  String errorMessage(String message) {
    return 'Feil: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Last inn $title';
  }

  @override
  String get navClear => 'Fjern';

  @override
  String get readerShowSummary => 'Sammendrag';

  @override
  String get readerShowOriginal => 'Original';

  @override
  String get summaryPickBook => 'Velg en bok for å begynne';

  @override
  String get summaryUnavailable => 'Sammendrag er ikke tilgjengelig';

  @override
  String get originalTextMissing =>
      'Ingen originaltekst for dette avsnittet — velg et kapittel';

  @override
  String get cloudNoTerms => 'Ingen termer';

  @override
  String get settingsServerSection => 'Server';

  @override
  String get settingsSummaryLanguage => 'Språk for sammendrag';
}
