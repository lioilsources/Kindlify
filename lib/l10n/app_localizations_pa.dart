// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'ਚੁਣੇ ਗਏ ਸਾਰੇ ਸ਼ਬਦਾਂ ਵਾਲਾ ਕੋਈ ਭਾਗ ਨਹੀਂ ਹੈ';

  @override
  String get navClearFilters => 'ਫਿਲਟਰ ਹਟਾਓ';

  @override
  String cloudMoreWords(int count) {
    return '+$count ਹੋਰ';
  }

  @override
  String get cloudSearchHint => 'ਸ਼ਬਦ ਖੋਜੋ...';

  @override
  String get summaryAiBadge => 'AI · ਲਾਈਵ';

  @override
  String get summaryOfflineFallback =>
      'ਸਰਵਰ ਉਪਲਬਧ ਨਹੀਂ — ਪਹਿਲਾਂ ਤੋਂ ਤਿਆਰ ਸਾਰ ਦਿਖਾਇਆ ਜਾ ਰਿਹਾ ਹੈ';

  @override
  String get libraryTitle => 'ਲਾਇਬ੍ਰੇਰੀ';

  @override
  String get libraryEmpty => 'ਅਜੇ ਕੋਈ ਕਿਤਾਬ ਨਹੀਂ';

  @override
  String get libraryLoadDemo => 'ਡੈਮੋ ਕਿਤਾਬ ਲੋਡ ਕਰੋ';

  @override
  String get libraryLoading => 'ਕਿਤਾਬ ਲੋਡ ਹੋ ਰਹੀ ਹੈ…';

  @override
  String get settingsTitle => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get settingsServerUrl => 'ਸਰਵਰ URL';

  @override
  String get settingsLocale => 'ਭਾਸ਼ਾ';

  @override
  String get settingsLocaleCs => 'ਚੈੱਕ';

  @override
  String get settingsLocaleEn => 'ਅੰਗਰੇਜ਼ੀ';

  @override
  String get readerZoomOutHint => 'ਜ਼ੂਮ ਆਊਟ ਕਰਨ ਲਈ ਪਿੰਚ ਕਰੋ';

  @override
  String errorMessage(String message) {
    return 'ਗਲਤੀ: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title ਲੋਡ ਕਰੋ';
  }

  @override
  String get navClear => 'ਹਟਾਓ';

  @override
  String get readerShowSummary => 'ਸਾਰ';

  @override
  String get readerShowOriginal => 'ਮੂਲ ਪਾਠ';

  @override
  String get summaryPickBook => 'ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਕੋਈ ਕਿਤਾਬ ਚੁਣੋ';

  @override
  String get summaryUnavailable => 'ਸਾਰ ਉਪਲਬਧ ਨਹੀਂ ਹੈ';

  @override
  String get originalTextMissing =>
      'ਇਸ ਹਿੱਸੇ ਦਾ ਮੂਲ ਪਾਠ ਨਹੀਂ ਹੈ — ਕੋਈ ਅਧਿਆਇ ਚੁਣੋ';

  @override
  String get cloudNoTerms => 'ਕੋਈ ਸ਼ਬਦ ਨਹੀਂ';

  @override
  String get settingsServerSection => 'ਸਰਵਰ';

  @override
  String get settingsSummaryLanguage => 'ਸਾਰ ਦੀ ਭਾਸ਼ਾ';
}
