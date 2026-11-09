// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'ಆಯ್ಕೆ ಮಾಡಿದ ಎಲ್ಲಾ ಪದಗಳನ್ನು ಹೊಂದಿರುವ ಯಾವುದೇ ವಿಭಾಗವಿಲ್ಲ';

  @override
  String get navClearFilters => 'ಫಿಲ್ಟರ್‌ಗಳನ್ನು ತೆರವುಗೊಳಿಸಿ';

  @override
  String cloudMoreWords(int count) {
    return '+$count ಇನ್ನಷ್ಟು';
  }

  @override
  String get cloudSearchHint => 'ಪದಗಳನ್ನು ಹುಡುಕಿ...';

  @override
  String get summaryAiBadge => 'AI · ಲೈವ್';

  @override
  String get summaryOfflineFallback =>
      'ಸರ್ವರ್ ಲಭ್ಯವಿಲ್ಲ — ಮೊದಲೇ ಲೆಕ್ಕಹಾಕಿದ ಸಾರಾಂಶ ತೋರಿಸಲಾಗುತ್ತಿದೆ';

  @override
  String get libraryTitle => 'ಗ್ರಂಥಾಲಯ';

  @override
  String get libraryEmpty => 'ಇನ್ನೂ ಯಾವುದೇ ಪುಸ್ತಕಗಳಿಲ್ಲ';

  @override
  String get libraryLoadDemo => 'ಡೆಮೊ ಪುಸ್ತಕ ಲೋಡ್ ಮಾಡಿ';

  @override
  String get libraryLoading => 'ಪುಸ್ತಕ ಲೋಡ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get settingsTitle => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get settingsServerUrl => 'ಸರ್ವರ್ URL';

  @override
  String get settingsLocale => 'ಭಾಷೆ';

  @override
  String get settingsLocaleCs => 'ಜೆಕ್';

  @override
  String get settingsLocaleEn => 'ಇಂಗ್ಲಿಷ್';

  @override
  String get readerZoomOutHint => 'ಝೂಮ್ ಔಟ್ ಮಾಡಲು ಪಿಂಚ್ ಮಾಡಿ';

  @override
  String errorMessage(String message) {
    return 'ದೋಷ: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title ಲೋಡ್ ಮಾಡಿ';
  }

  @override
  String get navClear => 'ತೆರವುಗೊಳಿಸಿ';

  @override
  String get readerShowSummary => 'ಸಾರಾಂಶ';

  @override
  String get readerShowOriginal => 'ಮೂಲ ಪಠ್ಯ';

  @override
  String get summaryPickBook => 'ಪ್ರಾರಂಭಿಸಲು ಒಂದು ಪುಸ್ತಕ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get summaryUnavailable => 'ಸಾರಾಂಶ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get originalTextMissing =>
      'ಈ ಭಾಗಕ್ಕೆ ಮೂಲ ಪಠ್ಯವಿಲ್ಲ — ಒಂದು ಅಧ್ಯಾಯ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get cloudNoTerms => 'ಯಾವುದೇ ಪದಗಳಿಲ್ಲ';

  @override
  String get settingsServerSection => 'ಸರ್ವರ್';

  @override
  String get settingsSummaryLanguage => 'ಸಾರಾಂಶಗಳ ಭಾಷೆ';
}
