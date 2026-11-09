// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'کوئی حصہ تمام منتخب الفاظ پر مشتمل نہیں';

  @override
  String get navClearFilters => 'فلٹرز صاف کریں';

  @override
  String cloudMoreWords(int count) {
    return '+$count مزید';
  }

  @override
  String get cloudSearchHint => 'اصطلاحات تلاش کریں...';

  @override
  String get summaryAiBadge => 'AI · براہ راست';

  @override
  String get summaryOfflineFallback =>
      'سرور دستیاب نہیں — پہلے سے تیار شدہ خلاصہ دکھایا جا رہا ہے';

  @override
  String get libraryTitle => 'لائبریری';

  @override
  String get libraryEmpty => 'ابھی کوئی کتاب نہیں';

  @override
  String get libraryLoadDemo => 'ڈیمو کتاب لوڈ کریں';

  @override
  String get libraryLoading => 'کتاب لوڈ ہو رہی ہے…';

  @override
  String get settingsTitle => 'ترتیبات';

  @override
  String get settingsServerUrl => 'سرور URL';

  @override
  String get settingsLocale => 'زبان';

  @override
  String get settingsLocaleCs => 'چیک';

  @override
  String get settingsLocaleEn => 'انگریزی';

  @override
  String get readerZoomOutHint => 'زوم آؤٹ کرنے کے لیے چٹکی لیں';

  @override
  String errorMessage(String message) {
    return 'خرابی: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title لوڈ کریں';
  }

  @override
  String get navClear => 'صاف کریں';

  @override
  String get readerShowSummary => 'خلاصہ';

  @override
  String get readerShowOriginal => 'اصل متن';

  @override
  String get summaryPickBook => 'شروع کرنے کے لیے کوئی کتاب منتخب کریں';

  @override
  String get summaryUnavailable => 'خلاصہ دستیاب نہیں';

  @override
  String get originalTextMissing =>
      'اس حصے کا اصل متن نہیں ہے — کوئی باب منتخب کریں';

  @override
  String get cloudNoTerms => 'کوئی اصطلاح نہیں';

  @override
  String get settingsServerSection => 'سرور';

  @override
  String get settingsSummaryLanguage => 'خلاصوں کی زبان';
}
