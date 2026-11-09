// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Żadna sekcja nie zawiera wszystkich wybranych słów';

  @override
  String get navClearFilters => 'Wyczyść filtry';

  @override
  String cloudMoreWords(int count) {
    return '+$count więcej';
  }

  @override
  String get cloudSearchHint => 'Szukaj terminów...';

  @override
  String get summaryAiBadge => 'AI · na żywo';

  @override
  String get summaryOfflineFallback =>
      'Serwer niedostępny — wyświetlane jest wcześniej obliczone podsumowanie';

  @override
  String get libraryTitle => 'Biblioteka';

  @override
  String get libraryEmpty => 'Brak książek';

  @override
  String get libraryLoadDemo => 'Wczytaj książkę demonstracyjną';

  @override
  String get libraryLoading => 'Wczytywanie książki…';

  @override
  String get settingsTitle => 'Ustawienia';

  @override
  String get settingsServerUrl => 'Adres URL serwera';

  @override
  String get settingsLocale => 'Język';

  @override
  String get settingsLocaleCs => 'Czeski';

  @override
  String get settingsLocaleEn => 'Angielski';

  @override
  String get readerZoomOutHint => 'Zsuń palce, aby pomniejszyć';

  @override
  String errorMessage(String message) {
    return 'Błąd: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Wczytaj: $title';
  }

  @override
  String get navClear => 'Wyczyść';

  @override
  String get readerShowSummary => 'Podsumowanie';

  @override
  String get readerShowOriginal => 'Oryginał';

  @override
  String get summaryPickBook => 'Wybierz książkę, aby zacząć';

  @override
  String get summaryUnavailable => 'Podsumowanie niedostępne';

  @override
  String get originalTextMissing =>
      'Brak tekstu oryginału dla tego fragmentu — wybierz rozdział';

  @override
  String get cloudNoTerms => 'Brak terminów';

  @override
  String get settingsServerSection => 'Serwer';

  @override
  String get settingsSummaryLanguage => 'Język podsumowań';
}
