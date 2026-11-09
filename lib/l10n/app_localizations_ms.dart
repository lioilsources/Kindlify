// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Tiada bahagian yang mengandungi semua perkataan yang dipilih';

  @override
  String get navClearFilters => 'Kosongkan penapis';

  @override
  String cloudMoreWords(int count) {
    return '+$count lagi';
  }

  @override
  String get cloudSearchHint => 'Cari istilah...';

  @override
  String get summaryAiBadge => 'AI · langsung';

  @override
  String get summaryOfflineFallback =>
      'Pelayan tidak tersedia — memaparkan ringkasan yang telah dikira';

  @override
  String get libraryTitle => 'Pustaka';

  @override
  String get libraryEmpty => 'Belum ada buku';

  @override
  String get libraryLoadDemo => 'Muatkan buku demo';

  @override
  String get libraryLoading => 'Memuatkan buku…';

  @override
  String get settingsTitle => 'Tetapan';

  @override
  String get settingsServerUrl => 'URL pelayan';

  @override
  String get settingsLocale => 'Bahasa';

  @override
  String get settingsLocaleCs => 'Czech';

  @override
  String get settingsLocaleEn => 'Inggeris';

  @override
  String get readerZoomOutHint => 'Cubit untuk zum keluar';

  @override
  String errorMessage(String message) {
    return 'Ralat: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Muatkan $title';
  }

  @override
  String get navClear => 'Kosongkan';

  @override
  String get readerShowSummary => 'Ringkasan';

  @override
  String get readerShowOriginal => 'Teks asal';

  @override
  String get summaryPickBook => 'Pilih buku untuk bermula';

  @override
  String get summaryUnavailable => 'Ringkasan tidak tersedia';

  @override
  String get originalTextMissing =>
      'Tiada teks asal untuk petikan ini — pilih bab';

  @override
  String get cloudNoTerms => 'Tiada istilah';

  @override
  String get settingsServerSection => 'Pelayan';

  @override
  String get settingsSummaryLanguage => 'Bahasa ringkasan';
}
