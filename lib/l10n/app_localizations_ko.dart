// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => '선택한 단어를 모두 포함하는 섹션이 없습니다';

  @override
  String get navClearFilters => '필터 지우기';

  @override
  String cloudMoreWords(int count) {
    return '+$count개 더';
  }

  @override
  String get cloudSearchHint => '용어 검색...';

  @override
  String get summaryAiBadge => 'AI · 실시간';

  @override
  String get summaryOfflineFallback => '서버를 사용할 수 없습니다 — 미리 계산된 요약을 표시합니다';

  @override
  String get libraryTitle => '서재';

  @override
  String get libraryEmpty => '아직 책이 없습니다';

  @override
  String get libraryLoadDemo => '데모 책 불러오기';

  @override
  String get libraryLoading => '책을 불러오는 중…';

  @override
  String get settingsTitle => '설정';

  @override
  String get settingsServerUrl => '서버 URL';

  @override
  String get settingsLocale => '언어';

  @override
  String get settingsLocaleCs => '체코어';

  @override
  String get settingsLocaleEn => '영어';

  @override
  String get readerZoomOutHint => '핀치하여 축소';

  @override
  String errorMessage(String message) {
    return '오류: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title 불러오기';
  }

  @override
  String get navClear => '지우기';

  @override
  String get readerShowSummary => '요약';

  @override
  String get readerShowOriginal => '원문';

  @override
  String get summaryPickBook => '시작하려면 책을 선택하세요';

  @override
  String get summaryUnavailable => '요약이 없습니다';

  @override
  String get originalTextMissing => '이 부분에는 원문이 없습니다 — 장을 선택하세요';

  @override
  String get cloudNoTerms => '용어가 없습니다';

  @override
  String get settingsServerSection => '서버';

  @override
  String get settingsSummaryLanguage => '요약 언어';
}
