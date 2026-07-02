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
}
