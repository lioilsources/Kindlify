// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'אין קטע שמכיל את כל המילים שנבחרו';

  @override
  String get navClearFilters => 'ניקוי מסננים';

  @override
  String cloudMoreWords(int count) {
    return '+$count נוספים';
  }

  @override
  String get cloudSearchHint => 'חיפוש מונחים...';

  @override
  String get summaryAiBadge => 'AI · חי';

  @override
  String get summaryOfflineFallback => 'השרת אינו זמין — מוצג סיכום שחושב מראש';

  @override
  String get libraryTitle => 'ספרייה';

  @override
  String get libraryEmpty => 'אין עדיין ספרים';

  @override
  String get libraryLoadDemo => 'טעינת ספר לדוגמה';

  @override
  String get libraryLoading => 'הספר נטען…';

  @override
  String get settingsTitle => 'הגדרות';

  @override
  String get settingsServerUrl => 'כתובת URL של השרת';

  @override
  String get settingsLocale => 'שפה';

  @override
  String get settingsLocaleCs => 'צ\'כית';

  @override
  String get settingsLocaleEn => 'אנגלית';

  @override
  String get readerZoomOutHint => 'צבטו כדי להקטין';

  @override
  String errorMessage(String message) {
    return 'שגיאה: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'טעינת $title';
  }

  @override
  String get navClear => 'ניקוי';

  @override
  String get readerShowSummary => 'סיכום';

  @override
  String get readerShowOriginal => 'מקור';

  @override
  String get summaryPickBook => 'בחרו ספר כדי להתחיל';

  @override
  String get summaryUnavailable => 'אין סיכום זמין';

  @override
  String get originalTextMissing => 'אין טקסט מקור לקטע הזה — בחרו פרק';

  @override
  String get cloudNoTerms => 'אין מונחים';

  @override
  String get settingsServerSection => 'שרת';

  @override
  String get settingsSummaryLanguage => 'שפת הסיכומים';
}
