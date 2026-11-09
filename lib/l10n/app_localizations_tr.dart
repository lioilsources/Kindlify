// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Seçilen tüm kelimeleri içeren bölüm yok';

  @override
  String get navClearFilters => 'Filtreleri temizle';

  @override
  String cloudMoreWords(int count) {
    return '+$count daha';
  }

  @override
  String get cloudSearchHint => 'Terim ara...';

  @override
  String get summaryAiBadge => 'YZ · canlı';

  @override
  String get summaryOfflineFallback =>
      'Sunucu kullanılamıyor — önceden hesaplanmış özet gösteriliyor';

  @override
  String get libraryTitle => 'Kitaplık';

  @override
  String get libraryEmpty => 'Henüz kitap yok';

  @override
  String get libraryLoadDemo => 'Örnek kitabı yükle';

  @override
  String get libraryLoading => 'Kitap yükleniyor…';

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get settingsServerUrl => 'Sunucu URL\'si';

  @override
  String get settingsLocale => 'Dil';

  @override
  String get settingsLocaleCs => 'Çekçe';

  @override
  String get settingsLocaleEn => 'İngilizce';

  @override
  String get readerZoomOutHint =>
      'Uzaklaştırmak için iki parmağınızı birleştirin';

  @override
  String errorMessage(String message) {
    return 'Hata: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Yükle: $title';
  }

  @override
  String get navClear => 'Temizle';

  @override
  String get readerShowSummary => 'Özet';

  @override
  String get readerShowOriginal => 'Orijinal';

  @override
  String get summaryPickBook => 'Başlamak için bir kitap seçin';

  @override
  String get summaryUnavailable => 'Özet yok';

  @override
  String get originalTextMissing =>
      'Bu bölüm için orijinal metin yok — bir bölüm seçin';

  @override
  String get cloudNoTerms => 'Terim yok';

  @override
  String get settingsServerSection => 'Sunucu';

  @override
  String get settingsSummaryLanguage => 'Özetlerin dili';
}
