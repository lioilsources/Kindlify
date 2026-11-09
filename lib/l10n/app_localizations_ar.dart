// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'لا توجد أقسام تطابق كل الكلمات المحددة';

  @override
  String get navClearFilters => 'مسح عوامل التصفية';

  @override
  String cloudMoreWords(int count) {
    return '+$count أخرى';
  }

  @override
  String get cloudSearchHint => 'ابحث عن المصطلحات...';

  @override
  String get summaryAiBadge => 'ذكاء اصطناعي · مباشر';

  @override
  String get summaryOfflineFallback =>
      'الخادم غير متاح — يُعرض ملخص محسوب مسبقًا';

  @override
  String get libraryTitle => 'المكتبة';

  @override
  String get libraryEmpty => 'لا توجد كتب بعد';

  @override
  String get libraryLoadDemo => 'تحميل كتاب تجريبي';

  @override
  String get libraryLoading => 'جارٍ تحميل الكتاب…';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsServerUrl => 'عنوان URL للخادم';

  @override
  String get settingsLocale => 'اللغة';

  @override
  String get settingsLocaleCs => 'التشيكية';

  @override
  String get settingsLocaleEn => 'الإنجليزية';

  @override
  String get readerZoomOutHint => 'اقرص للتصغير';

  @override
  String errorMessage(String message) {
    return 'خطأ: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'تحميل $title';
  }

  @override
  String get navClear => 'مسح';

  @override
  String get readerShowSummary => 'الملخص';

  @override
  String get readerShowOriginal => 'النص الأصلي';

  @override
  String get summaryPickBook => 'اختر كتابًا للبدء';

  @override
  String get summaryUnavailable => 'الملخص غير متاح';

  @override
  String get originalTextMissing => 'لا يوجد نص أصلي لهذا المقطع — اختر فصلًا';

  @override
  String get cloudNoTerms => 'لا توجد مصطلحات';

  @override
  String get settingsServerSection => 'الخادم';

  @override
  String get settingsSummaryLanguage => 'لغة الملخصات';
}
