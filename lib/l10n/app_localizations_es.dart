// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Ninguna sección contiene todas las palabras seleccionadas';

  @override
  String get navClearFilters => 'Borrar filtros';

  @override
  String cloudMoreWords(int count) {
    return '+$count más';
  }

  @override
  String get cloudSearchHint => 'Buscar términos...';

  @override
  String get summaryAiBadge => 'IA · en directo';

  @override
  String get summaryOfflineFallback =>
      'Servidor no disponible — se muestra el resumen precalculado';

  @override
  String get libraryTitle => 'Biblioteca';

  @override
  String get libraryEmpty => 'Aún no hay libros';

  @override
  String get libraryLoadDemo => 'Cargar libro de muestra';

  @override
  String get libraryLoading => 'Cargando libro…';

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get settingsServerUrl => 'URL del servidor';

  @override
  String get settingsLocale => 'Idioma';

  @override
  String get settingsLocaleCs => 'Checo';

  @override
  String get settingsLocaleEn => 'Inglés';

  @override
  String get readerZoomOutHint => 'Pellizca para alejar';

  @override
  String errorMessage(String message) {
    return 'Error: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Cargar $title';
  }

  @override
  String get navClear => 'Borrar';

  @override
  String get readerShowSummary => 'Resumen';

  @override
  String get readerShowOriginal => 'Original';

  @override
  String get summaryPickBook => 'Elige un libro para empezar';

  @override
  String get summaryUnavailable => 'Resumen no disponible';

  @override
  String get originalTextMissing =>
      'No hay texto original para este pasaje — elige un capítulo';

  @override
  String get cloudNoTerms => 'No hay términos';

  @override
  String get settingsServerSection => 'Servidor';

  @override
  String get settingsSummaryLanguage => 'Idioma de los resúmenes';
}
