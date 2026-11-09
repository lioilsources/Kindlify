// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Tidak ada bagian yang memuat semua kata terpilih';

  @override
  String get navClearFilters => 'Hapus filter';

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
      'Server tidak tersedia — menampilkan ringkasan yang sudah dihitung';

  @override
  String get libraryTitle => 'Pustaka';

  @override
  String get libraryEmpty => 'Belum ada buku';

  @override
  String get libraryLoadDemo => 'Muat buku contoh';

  @override
  String get libraryLoading => 'Memuat buku…';

  @override
  String get settingsTitle => 'Pengaturan';

  @override
  String get settingsServerUrl => 'URL server';

  @override
  String get settingsLocale => 'Bahasa';

  @override
  String get settingsLocaleCs => 'Ceko';

  @override
  String get settingsLocaleEn => 'Inggris';

  @override
  String get readerZoomOutHint => 'Cubit untuk memperkecil';

  @override
  String errorMessage(String message) {
    return 'Kesalahan: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Muat $title';
  }

  @override
  String get navClear => 'Hapus';

  @override
  String get readerShowSummary => 'Ringkasan';

  @override
  String get readerShowOriginal => 'Teks asli';

  @override
  String get summaryPickBook => 'Pilih buku untuk memulai';

  @override
  String get summaryUnavailable => 'Ringkasan tidak tersedia';

  @override
  String get originalTextMissing =>
      'Tidak ada teks asli untuk bagian ini — pilih bab';

  @override
  String get cloudNoTerms => 'Tidak ada istilah';

  @override
  String get settingsServerSection => 'Server';

  @override
  String get settingsSummaryLanguage => 'Bahasa ringkasan';
}
