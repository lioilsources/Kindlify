// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'चुने गए सभी शब्दों वाला कोई खंड नहीं है';

  @override
  String get navClearFilters => 'फ़िल्टर हटाएँ';

  @override
  String cloudMoreWords(int count) {
    return '+$count और';
  }

  @override
  String get cloudSearchHint => 'शब्द खोजें...';

  @override
  String get summaryAiBadge => 'AI · लाइव';

  @override
  String get summaryOfflineFallback =>
      'सर्वर उपलब्ध नहीं है — पहले से तैयार सारांश दिखाया जा रहा है';

  @override
  String get libraryTitle => 'लाइब्रेरी';

  @override
  String get libraryEmpty => 'अभी कोई किताब नहीं';

  @override
  String get libraryLoadDemo => 'डेमो किताब लोड करें';

  @override
  String get libraryLoading => 'किताब लोड हो रही है…';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get settingsServerUrl => 'सर्वर URL';

  @override
  String get settingsLocale => 'भाषा';

  @override
  String get settingsLocaleCs => 'चेक';

  @override
  String get settingsLocaleEn => 'अंग्रेज़ी';

  @override
  String get readerZoomOutHint => 'ज़ूम आउट करने के लिए पिंच करें';

  @override
  String errorMessage(String message) {
    return 'त्रुटि: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title लोड करें';
  }

  @override
  String get navClear => 'हटाएँ';

  @override
  String get readerShowSummary => 'सारांश';

  @override
  String get readerShowOriginal => 'मूल पाठ';

  @override
  String get summaryPickBook => 'शुरू करने के लिए कोई किताब चुनें';

  @override
  String get summaryUnavailable => 'सारांश उपलब्ध नहीं है';

  @override
  String get originalTextMissing =>
      'इस अंश का मूल पाठ नहीं है — कोई अध्याय चुनें';

  @override
  String get cloudNoTerms => 'कोई शब्द नहीं';

  @override
  String get settingsServerSection => 'सर्वर';

  @override
  String get settingsSummaryLanguage => 'सारांश की भाषा';
}
