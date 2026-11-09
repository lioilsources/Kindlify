// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Không có phần nào chứa tất cả các từ đã chọn';

  @override
  String get navClearFilters => 'Xóa bộ lọc';

  @override
  String cloudMoreWords(int count) {
    return '+$count nữa';
  }

  @override
  String get cloudSearchHint => 'Tìm thuật ngữ...';

  @override
  String get summaryAiBadge => 'AI · trực tiếp';

  @override
  String get summaryOfflineFallback =>
      'Máy chủ không khả dụng — đang hiển thị bản tóm tắt tính sẵn';

  @override
  String get libraryTitle => 'Thư viện';

  @override
  String get libraryEmpty => 'Chưa có sách';

  @override
  String get libraryLoadDemo => 'Tải sách mẫu';

  @override
  String get libraryLoading => 'Đang tải sách…';

  @override
  String get settingsTitle => 'Cài đặt';

  @override
  String get settingsServerUrl => 'URL máy chủ';

  @override
  String get settingsLocale => 'Ngôn ngữ';

  @override
  String get settingsLocaleCs => 'Tiếng Séc';

  @override
  String get settingsLocaleEn => 'Tiếng Anh';

  @override
  String get readerZoomOutHint => 'Chụm ngón tay để thu nhỏ';

  @override
  String errorMessage(String message) {
    return 'Lỗi: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Tải $title';
  }

  @override
  String get navClear => 'Xóa';

  @override
  String get readerShowSummary => 'Tóm tắt';

  @override
  String get readerShowOriginal => 'Nguyên bản';

  @override
  String get summaryPickBook => 'Chọn một cuốn sách để bắt đầu';

  @override
  String get summaryUnavailable => 'Không có bản tóm tắt';

  @override
  String get originalTextMissing =>
      'Đoạn này không có văn bản gốc — hãy chọn một chương';

  @override
  String get cloudNoTerms => 'Không có thuật ngữ';

  @override
  String get settingsServerSection => 'Máy chủ';

  @override
  String get settingsSummaryLanguage => 'Ngôn ngữ của bản tóm tắt';
}
