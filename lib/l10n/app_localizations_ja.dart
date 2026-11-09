// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => '選択したすべての語を含むセクションはありません';

  @override
  String get navClearFilters => 'フィルタをクリア';

  @override
  String cloudMoreWords(int count) {
    return 'ほか$count件';
  }

  @override
  String get cloudSearchHint => '用語を検索...';

  @override
  String get summaryAiBadge => 'AI · ライブ';

  @override
  String get summaryOfflineFallback => 'サーバーに接続できません — 事前計算された要約を表示しています';

  @override
  String get libraryTitle => 'ライブラリ';

  @override
  String get libraryEmpty => 'まだ本がありません';

  @override
  String get libraryLoadDemo => 'デモの本を読み込む';

  @override
  String get libraryLoading => '本を読み込んでいます…';

  @override
  String get settingsTitle => '設定';

  @override
  String get settingsServerUrl => 'サーバーURL';

  @override
  String get settingsLocale => '言語';

  @override
  String get settingsLocaleCs => 'チェコ語';

  @override
  String get settingsLocaleEn => '英語';

  @override
  String get readerZoomOutHint => 'ピンチでズームアウト';

  @override
  String errorMessage(String message) {
    return 'エラー: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$titleを読み込む';
  }

  @override
  String get navClear => 'クリア';

  @override
  String get readerShowSummary => '要約';

  @override
  String get readerShowOriginal => '原文';

  @override
  String get summaryPickBook => '本を選んで始めましょう';

  @override
  String get summaryUnavailable => '要約はありません';

  @override
  String get originalTextMissing => 'この箇所の原文はありません — 章を選んでください';

  @override
  String get cloudNoTerms => '用語がありません';

  @override
  String get settingsServerSection => 'サーバー';

  @override
  String get settingsSummaryLanguage => '要約の言語';
}
