// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Cap secció conté totes les paraules seleccionades';

  @override
  String get navClearFilters => 'Esborra els filtres';

  @override
  String cloudMoreWords(int count) {
    return '+$count més';
  }

  @override
  String get cloudSearchHint => 'Cerca termes...';

  @override
  String get summaryAiBadge => 'IA · en directe';

  @override
  String get summaryOfflineFallback =>
      'Servidor no disponible — es mostra el resum precalculat';

  @override
  String get libraryTitle => 'Biblioteca';

  @override
  String get libraryEmpty => 'Encara no hi ha llibres';

  @override
  String get libraryLoadDemo => 'Carrega el llibre de mostra';

  @override
  String get libraryLoading => 'S\'està carregant el llibre…';

  @override
  String get settingsTitle => 'Configuració';

  @override
  String get settingsServerUrl => 'URL del servidor';

  @override
  String get settingsLocale => 'Idioma';

  @override
  String get settingsLocaleCs => 'Txec';

  @override
  String get settingsLocaleEn => 'Anglès';

  @override
  String get readerZoomOutHint => 'Pessiga per allunyar';

  @override
  String errorMessage(String message) {
    return 'Error: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Carrega $title';
  }

  @override
  String get navClear => 'Esborra';

  @override
  String get readerShowSummary => 'Resum';

  @override
  String get readerShowOriginal => 'Original';

  @override
  String get summaryPickBook => 'Tria un llibre per començar';

  @override
  String get summaryUnavailable => 'Resum no disponible';

  @override
  String get originalTextMissing =>
      'No hi ha text original per a aquest passatge — tria un capítol';

  @override
  String get cloudNoTerms => 'Cap terme';

  @override
  String get settingsServerSection => 'Servidor';

  @override
  String get settingsSummaryLanguage => 'Idioma dels resums';
}
