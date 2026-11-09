// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'தேர்ந்தெடுத்த எல்லாச் சொற்களும் உள்ள பகுதி எதுவும் இல்லை';

  @override
  String get navClearFilters => 'வடிகட்டிகளை அழி';

  @override
  String cloudMoreWords(int count) {
    return '+மேலும் $count';
  }

  @override
  String get cloudSearchHint => 'சொற்களைத் தேடு...';

  @override
  String get summaryAiBadge => 'AI · நேரலை';

  @override
  String get summaryOfflineFallback =>
      'சர்வர் கிடைக்கவில்லை — முன்பே கணக்கிட்ட சுருக்கம் காட்டப்படுகிறது';

  @override
  String get libraryTitle => 'நூலகம்';

  @override
  String get libraryEmpty => 'இன்னும் புத்தகங்கள் இல்லை';

  @override
  String get libraryLoadDemo => 'டெமோ புத்தகத்தை ஏற்று';

  @override
  String get libraryLoading => 'புத்தகம் ஏற்றப்படுகிறது…';

  @override
  String get settingsTitle => 'அமைப்புகள்';

  @override
  String get settingsServerUrl => 'சர்வர் URL';

  @override
  String get settingsLocale => 'மொழி';

  @override
  String get settingsLocaleCs => 'செக்';

  @override
  String get settingsLocaleEn => 'ஆங்கிலம்';

  @override
  String get readerZoomOutHint => 'சிறிதாக்க பிஞ்ச் செய்யவும்';

  @override
  String errorMessage(String message) {
    return 'பிழை: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title ஏற்று';
  }

  @override
  String get navClear => 'அழி';

  @override
  String get readerShowSummary => 'சுருக்கம்';

  @override
  String get readerShowOriginal => 'மூல உரை';

  @override
  String get summaryPickBook => 'தொடங்க ஒரு புத்தகத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get summaryUnavailable => 'சுருக்கம் கிடைக்கவில்லை';

  @override
  String get originalTextMissing =>
      'இந்தப் பகுதிக்கு மூல உரை இல்லை — ஓர் அத்தியாயத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get cloudNoTerms => 'சொற்கள் இல்லை';

  @override
  String get settingsServerSection => 'சர்வர்';

  @override
  String get settingsSummaryLanguage => 'சுருக்கங்களின் மொழி';
}
