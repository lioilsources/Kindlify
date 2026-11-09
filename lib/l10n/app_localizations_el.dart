// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Καμία ενότητα δεν περιέχει όλες τις επιλεγμένες λέξεις';

  @override
  String get navClearFilters => 'Εκκαθάριση φίλτρων';

  @override
  String cloudMoreWords(int count) {
    return '+$count ακόμη';
  }

  @override
  String get cloudSearchHint => 'Αναζήτηση όρων...';

  @override
  String get summaryAiBadge => 'AI · ζωντανά';

  @override
  String get summaryOfflineFallback =>
      'Ο διακομιστής δεν είναι διαθέσιμος — εμφανίζεται προϋπολογισμένη περίληψη';

  @override
  String get libraryTitle => 'Βιβλιοθήκη';

  @override
  String get libraryEmpty => 'Δεν υπάρχουν ακόμη βιβλία';

  @override
  String get libraryLoadDemo => 'Φόρτωση δείγματος βιβλίου';

  @override
  String get libraryLoading => 'Φόρτωση βιβλίου…';

  @override
  String get settingsTitle => 'Ρυθμίσεις';

  @override
  String get settingsServerUrl => 'URL διακομιστή';

  @override
  String get settingsLocale => 'Γλώσσα';

  @override
  String get settingsLocaleCs => 'Τσεχικά';

  @override
  String get settingsLocaleEn => 'Αγγλικά';

  @override
  String get readerZoomOutHint => 'Τσιμπήστε για σμίκρυνση';

  @override
  String errorMessage(String message) {
    return 'Σφάλμα: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Φόρτωση: $title';
  }

  @override
  String get navClear => 'Εκκαθάριση';

  @override
  String get readerShowSummary => 'Περίληψη';

  @override
  String get readerShowOriginal => 'Πρωτότυπο';

  @override
  String get summaryPickBook => 'Επιλέξτε ένα βιβλίο για να ξεκινήσετε';

  @override
  String get summaryUnavailable => 'Η περίληψη δεν είναι διαθέσιμη';

  @override
  String get originalTextMissing =>
      'Δεν υπάρχει πρωτότυπο κείμενο για αυτό το απόσπασμα — επιλέξτε κεφάλαιο';

  @override
  String get cloudNoTerms => 'Δεν υπάρχουν όροι';

  @override
  String get settingsServerSection => 'Διακομιστής';

  @override
  String get settingsSummaryLanguage => 'Γλώσσα περιλήψεων';
}
