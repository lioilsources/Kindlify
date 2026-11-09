// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Egyik szakasz sem tartalmazza az összes kijelölt szót';

  @override
  String get navClearFilters => 'Szűrők törlése';

  @override
  String cloudMoreWords(int count) {
    return '+$count további';
  }

  @override
  String get cloudSearchHint => 'Kifejezések keresése...';

  @override
  String get summaryAiBadge => 'MI · élő';

  @override
  String get summaryOfflineFallback =>
      'A szerver nem érhető el — előre kiszámított összefoglaló látható';

  @override
  String get libraryTitle => 'Könyvtár';

  @override
  String get libraryEmpty => 'Még nincsenek könyvek';

  @override
  String get libraryLoadDemo => 'Mintakönyv betöltése';

  @override
  String get libraryLoading => 'Könyv betöltése…';

  @override
  String get settingsTitle => 'Beállítások';

  @override
  String get settingsServerUrl => 'Szerver URL';

  @override
  String get settingsLocale => 'Nyelv';

  @override
  String get settingsLocaleCs => 'Cseh';

  @override
  String get settingsLocaleEn => 'Angol';

  @override
  String get readerZoomOutHint => 'Csippentsen a kicsinyítéshez';

  @override
  String errorMessage(String message) {
    return 'Hiba: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Betöltés: $title';
  }

  @override
  String get navClear => 'Törlés';

  @override
  String get readerShowSummary => 'Összefoglaló';

  @override
  String get readerShowOriginal => 'Eredeti';

  @override
  String get summaryPickBook => 'A kezdéshez válasszon egy könyvet';

  @override
  String get summaryUnavailable => 'Nincs elérhető összefoglaló';

  @override
  String get originalTextMissing =>
      'Ehhez a részhez nincs eredeti szöveg — válasszon fejezetet';

  @override
  String get cloudNoTerms => 'Nincsenek kifejezések';

  @override
  String get settingsServerSection => 'Szerver';

  @override
  String get settingsSummaryLanguage => 'Az összefoglalók nyelve';
}
