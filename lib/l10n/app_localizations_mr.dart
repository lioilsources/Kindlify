// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'निवडलेले सर्व शब्द असलेला कोणताही विभाग नाही';

  @override
  String get navClearFilters => 'फिल्टर साफ करा';

  @override
  String cloudMoreWords(int count) {
    return '+आणखी $count';
  }

  @override
  String get cloudSearchHint => 'संज्ञा शोधा...';

  @override
  String get summaryAiBadge => 'AI · थेट';

  @override
  String get summaryOfflineFallback =>
      'सर्व्हर उपलब्ध नाही — आधीच तयार केलेला सारांश दाखवत आहे';

  @override
  String get libraryTitle => 'ग्रंथालय';

  @override
  String get libraryEmpty => 'अद्याप पुस्तके नाहीत';

  @override
  String get libraryLoadDemo => 'डेमो पुस्तक लोड करा';

  @override
  String get libraryLoading => 'पुस्तक लोड होत आहे…';

  @override
  String get settingsTitle => 'सेटिंग्ज';

  @override
  String get settingsServerUrl => 'सर्व्हर URL';

  @override
  String get settingsLocale => 'भाषा';

  @override
  String get settingsLocaleCs => 'चेक';

  @override
  String get settingsLocaleEn => 'इंग्रजी';

  @override
  String get readerZoomOutHint => 'झूम आउट करण्यासाठी पिंच करा';

  @override
  String errorMessage(String message) {
    return 'त्रुटी: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title लोड करा';
  }

  @override
  String get navClear => 'साफ करा';

  @override
  String get readerShowSummary => 'सारांश';

  @override
  String get readerShowOriginal => 'मूळ मजकूर';

  @override
  String get summaryPickBook => 'सुरू करण्यासाठी पुस्तक निवडा';

  @override
  String get summaryUnavailable => 'सारांश उपलब्ध नाही';

  @override
  String get originalTextMissing =>
      'या भागाचा मूळ मजकूर नाही — एखादा अध्याय निवडा';

  @override
  String get cloudNoTerms => 'संज्ञा नाहीत';

  @override
  String get settingsServerSection => 'सर्व्हर';

  @override
  String get settingsSummaryLanguage => 'सारांशांची भाषा';
}
