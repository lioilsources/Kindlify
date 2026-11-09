// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'No sections match all selected words';

  @override
  String get navClearFilters => 'Clear filters';

  @override
  String cloudMoreWords(int count) {
    return '+$count more';
  }

  @override
  String get cloudSearchHint => 'Search terms...';

  @override
  String get summaryAiBadge => 'AI · live';

  @override
  String get summaryOfflineFallback =>
      'Server unavailable — showing pre-computed summary';

  @override
  String get libraryTitle => 'Library';

  @override
  String get libraryEmpty => 'No books yet';

  @override
  String get libraryLoadDemo => 'Load demo book';

  @override
  String get libraryLoading => 'Loading book…';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsServerUrl => 'Server URL';

  @override
  String get settingsLocale => 'Language';

  @override
  String get settingsLocaleCs => 'Czech';

  @override
  String get settingsLocaleEn => 'English';

  @override
  String get readerZoomOutHint => 'Pinch to zoom out';

  @override
  String errorMessage(String message) {
    return 'Error: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Load $title';
  }

  @override
  String get navClear => 'Clear';

  @override
  String get readerShowSummary => 'Summary';

  @override
  String get readerShowOriginal => 'Original';

  @override
  String get summaryPickBook => 'Select a book to begin';

  @override
  String get summaryUnavailable => 'Summary not available';

  @override
  String get originalTextMissing =>
      'No original text for this passage — choose a chapter';

  @override
  String get cloudNoTerms => 'No terms';

  @override
  String get settingsServerSection => 'Server';

  @override
  String get settingsSummaryLanguage => 'Summary language';
}
