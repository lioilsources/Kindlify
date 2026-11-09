// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => '没有章节包含所有选中的词';

  @override
  String get navClearFilters => '清除筛选';

  @override
  String cloudMoreWords(int count) {
    return '还有 $count 个';
  }

  @override
  String get cloudSearchHint => '搜索术语...';

  @override
  String get summaryAiBadge => 'AI · 实时';

  @override
  String get summaryOfflineFallback => '服务器不可用 — 显示预先生成的摘要';

  @override
  String get libraryTitle => '书库';

  @override
  String get libraryEmpty => '还没有书';

  @override
  String get libraryLoadDemo => '加载示例书';

  @override
  String get libraryLoading => '正在加载书…';

  @override
  String get settingsTitle => '设置';

  @override
  String get settingsServerUrl => '服务器 URL';

  @override
  String get settingsLocale => '语言';

  @override
  String get settingsLocaleCs => '捷克语';

  @override
  String get settingsLocaleEn => '英语';

  @override
  String get readerZoomOutHint => '双指捏合以缩小';

  @override
  String errorMessage(String message) {
    return '错误：$message';
  }

  @override
  String libraryLoadBook(String title) {
    return '加载《$title》';
  }

  @override
  String get navClear => '清除';

  @override
  String get readerShowSummary => '摘要';

  @override
  String get readerShowOriginal => '原文';

  @override
  String get summaryPickBook => '选择一本书开始';

  @override
  String get summaryUnavailable => '暂无摘要';

  @override
  String get originalTextMissing => '此处没有原文 — 请选择一个章节';

  @override
  String get cloudNoTerms => '没有术语';

  @override
  String get settingsServerSection => '服务器';

  @override
  String get settingsSummaryLanguage => '摘要语言';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => '沒有章節包含所有選取的詞';

  @override
  String get navClearFilters => '清除篩選';

  @override
  String cloudMoreWords(int count) {
    return '還有 $count 個';
  }

  @override
  String get cloudSearchHint => '搜尋術語...';

  @override
  String get summaryAiBadge => 'AI · 即時';

  @override
  String get summaryOfflineFallback => '伺服器無法使用 — 顯示預先產生的摘要';

  @override
  String get libraryTitle => '書庫';

  @override
  String get libraryEmpty => '還沒有書';

  @override
  String get libraryLoadDemo => '載入範例書';

  @override
  String get libraryLoading => '正在載入書…';

  @override
  String get settingsTitle => '設定';

  @override
  String get settingsServerUrl => '伺服器 URL';

  @override
  String get settingsLocale => '語言';

  @override
  String get settingsLocaleCs => '捷克語';

  @override
  String get settingsLocaleEn => '英語';

  @override
  String get readerZoomOutHint => '雙指捏合以縮小';

  @override
  String errorMessage(String message) {
    return '錯誤：$message';
  }

  @override
  String libraryLoadBook(String title) {
    return '載入《$title》';
  }

  @override
  String get navClear => '清除';

  @override
  String get readerShowSummary => '摘要';

  @override
  String get readerShowOriginal => '原文';

  @override
  String get summaryPickBook => '選擇一本書開始';

  @override
  String get summaryUnavailable => '暫無摘要';

  @override
  String get originalTextMissing => '此處沒有原文 — 請選擇一個章節';

  @override
  String get cloudNoTerms => '沒有術語';

  @override
  String get settingsServerSection => '伺服器';

  @override
  String get settingsSummaryLanguage => '摘要語言';
}
