// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'ไม่มีส่วนใดที่มีคำที่เลือกครบทุกคำ';

  @override
  String get navClearFilters => 'ล้างตัวกรอง';

  @override
  String cloudMoreWords(int count) {
    return '+อีก $count';
  }

  @override
  String get cloudSearchHint => 'ค้นหาคำ...';

  @override
  String get summaryAiBadge => 'AI · สด';

  @override
  String get summaryOfflineFallback =>
      'เซิร์ฟเวอร์ไม่พร้อมใช้งาน — แสดงบทสรุปที่คำนวณไว้ล่วงหน้า';

  @override
  String get libraryTitle => 'คลังหนังสือ';

  @override
  String get libraryEmpty => 'ยังไม่มีหนังสือ';

  @override
  String get libraryLoadDemo => 'โหลดหนังสือตัวอย่าง';

  @override
  String get libraryLoading => 'กำลังโหลดหนังสือ…';

  @override
  String get settingsTitle => 'การตั้งค่า';

  @override
  String get settingsServerUrl => 'URL ของเซิร์ฟเวอร์';

  @override
  String get settingsLocale => 'ภาษา';

  @override
  String get settingsLocaleCs => 'เช็ก';

  @override
  String get settingsLocaleEn => 'อังกฤษ';

  @override
  String get readerZoomOutHint => 'บีบนิ้วเพื่อซูมออก';

  @override
  String errorMessage(String message) {
    return 'ข้อผิดพลาด: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'โหลด $title';
  }

  @override
  String get navClear => 'ล้าง';

  @override
  String get readerShowSummary => 'บทสรุป';

  @override
  String get readerShowOriginal => 'ต้นฉบับ';

  @override
  String get summaryPickBook => 'เลือกหนังสือเพื่อเริ่มต้น';

  @override
  String get summaryUnavailable => 'ไม่มีบทสรุป';

  @override
  String get originalTextMissing => 'ไม่มีต้นฉบับสำหรับตอนนี้ — เลือกบท';

  @override
  String get cloudNoTerms => 'ไม่มีคำ';

  @override
  String get settingsServerSection => 'เซิร์ฟเวอร์';

  @override
  String get settingsSummaryLanguage => 'ภาษาของบทสรุป';
}
