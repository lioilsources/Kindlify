// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Ни один раздел не содержит все выбранные слова';

  @override
  String get navClearFilters => 'Сбросить фильтры';

  @override
  String cloudMoreWords(int count) {
    return 'ещё +$count';
  }

  @override
  String get cloudSearchHint => 'Поиск терминов...';

  @override
  String get summaryAiBadge => 'ИИ · в реальном времени';

  @override
  String get summaryOfflineFallback =>
      'Сервер недоступен — показано заранее подготовленное резюме';

  @override
  String get libraryTitle => 'Библиотека';

  @override
  String get libraryEmpty => 'Книг пока нет';

  @override
  String get libraryLoadDemo => 'Загрузить демокнигу';

  @override
  String get libraryLoading => 'Загрузка книги…';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get settingsServerUrl => 'URL сервера';

  @override
  String get settingsLocale => 'Язык';

  @override
  String get settingsLocaleCs => 'Чешский';

  @override
  String get settingsLocaleEn => 'Английский';

  @override
  String get readerZoomOutHint => 'Сведите пальцы, чтобы уменьшить';

  @override
  String errorMessage(String message) {
    return 'Ошибка: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Загрузить «$title»';
  }

  @override
  String get navClear => 'Сбросить';

  @override
  String get readerShowSummary => 'Резюме';

  @override
  String get readerShowOriginal => 'Оригинал';

  @override
  String get summaryPickBook => 'Выберите книгу, чтобы начать';

  @override
  String get summaryUnavailable => 'Резюме недоступно';

  @override
  String get originalTextMissing =>
      'Для этого места нет оригинального текста — выберите главу';

  @override
  String get cloudNoTerms => 'Нет терминов';

  @override
  String get settingsServerSection => 'Сервер';

  @override
  String get settingsSummaryLanguage => 'Язык резюме';
}
