// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Жоден розділ не містить усіх вибраних слів';

  @override
  String get navClearFilters => 'Скинути фільтри';

  @override
  String cloudMoreWords(int count) {
    return 'ще +$count';
  }

  @override
  String get cloudSearchHint => 'Пошук термінів...';

  @override
  String get summaryAiBadge => 'ШІ · наживо';

  @override
  String get summaryOfflineFallback =>
      'Сервер недоступний — показано заздалегідь підготовлений підсумок';

  @override
  String get libraryTitle => 'Бібліотека';

  @override
  String get libraryEmpty => 'Книжок поки немає';

  @override
  String get libraryLoadDemo => 'Завантажити демокнигу';

  @override
  String get libraryLoading => 'Завантаження книги…';

  @override
  String get settingsTitle => 'Налаштування';

  @override
  String get settingsServerUrl => 'URL сервера';

  @override
  String get settingsLocale => 'Мова';

  @override
  String get settingsLocaleCs => 'Чеська';

  @override
  String get settingsLocaleEn => 'Англійська';

  @override
  String get readerZoomOutHint => 'Зведіть пальці, щоб зменшити';

  @override
  String errorMessage(String message) {
    return 'Помилка: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Завантажити «$title»';
  }

  @override
  String get navClear => 'Скинути';

  @override
  String get readerShowSummary => 'Підсумок';

  @override
  String get readerShowOriginal => 'Оригінал';

  @override
  String get summaryPickBook => 'Виберіть книгу, щоб почати';

  @override
  String get summaryUnavailable => 'Підсумок недоступний';

  @override
  String get originalTextMissing =>
      'Для цього місця немає оригінального тексту — виберіть розділ';

  @override
  String get cloudNoTerms => 'Немає термінів';

  @override
  String get settingsServerSection => 'Сервер';

  @override
  String get settingsSummaryLanguage => 'Мова підсумків';
}
