// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'ବଛାଯାଇଥିବା ସମସ୍ତ ଶବ୍ଦ ଥିବା କୌଣସି ବିଭାଗ ନାହିଁ';

  @override
  String get navClearFilters => 'ଫିଲ୍ଟର ହଟାନ୍ତୁ';

  @override
  String cloudMoreWords(int count) {
    return '+ଆଉ $count';
  }

  @override
  String get cloudSearchHint => 'ଶବ୍ଦ ଖୋଜନ୍ତୁ...';

  @override
  String get summaryAiBadge => 'AI · ଲାଇଭ';

  @override
  String get summaryOfflineFallback =>
      'ସର୍ଭର ଉପଲବ୍ଧ ନାହିଁ — ପୂର୍ବରୁ ପ୍ରସ୍ତୁତ ସାରାଂଶ ଦେଖାଯାଉଛି';

  @override
  String get libraryTitle => 'ଲାଇବ୍ରେରୀ';

  @override
  String get libraryEmpty => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ବହି ନାହିଁ';

  @override
  String get libraryLoadDemo => 'ଡେମୋ ବହି ଲୋଡ କରନ୍ତୁ';

  @override
  String get libraryLoading => 'ବହି ଲୋଡ ହେଉଛି…';

  @override
  String get settingsTitle => 'ସେଟିଂସ';

  @override
  String get settingsServerUrl => 'ସର୍ଭର URL';

  @override
  String get settingsLocale => 'ଭାଷା';

  @override
  String get settingsLocaleCs => 'ଚେକ';

  @override
  String get settingsLocaleEn => 'ଇଂରାଜୀ';

  @override
  String get readerZoomOutHint => 'ଜୁମ ଆଉଟ କରିବାକୁ ପିଞ୍ଚ କରନ୍ତୁ';

  @override
  String errorMessage(String message) {
    return 'ତ୍ରୁଟି: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title ଲୋଡ କରନ୍ତୁ';
  }

  @override
  String get navClear => 'ହଟାନ୍ତୁ';

  @override
  String get readerShowSummary => 'ସାରାଂଶ';

  @override
  String get readerShowOriginal => 'ମୂଳ ପାଠ';

  @override
  String get summaryPickBook => 'ଆରମ୍ଭ କରିବାକୁ ଏକ ବହି ବାଛନ୍ତୁ';

  @override
  String get summaryUnavailable => 'ସାରାଂଶ ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get originalTextMissing =>
      'ଏହି ଅଂଶର ମୂଳ ପାଠ ନାହିଁ — ଏକ ଅଧ୍ୟାୟ ବାଛନ୍ତୁ';

  @override
  String get cloudNoTerms => 'କୌଣସି ଶବ୍ଦ ନାହିଁ';

  @override
  String get settingsServerSection => 'ସର୍ଭର';

  @override
  String get settingsSummaryLanguage => 'ସାରାଂଶର ଭାଷା';
}
