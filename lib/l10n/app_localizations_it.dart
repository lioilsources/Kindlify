// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Nessuna sezione contiene tutte le parole selezionate';

  @override
  String get navClearFilters => 'Cancella filtri';

  @override
  String cloudMoreWords(int count) {
    return '+$count altri';
  }

  @override
  String get cloudSearchHint => 'Cerca termini...';

  @override
  String get summaryAiBadge => 'IA · dal vivo';

  @override
  String get summaryOfflineFallback =>
      'Server non disponibile — viene mostrato il riassunto precalcolato';

  @override
  String get libraryTitle => 'Libreria';

  @override
  String get libraryEmpty => 'Ancora nessun libro';

  @override
  String get libraryLoadDemo => 'Carica libro di esempio';

  @override
  String get libraryLoading => 'Caricamento del libro…';

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get settingsServerUrl => 'URL del server';

  @override
  String get settingsLocale => 'Lingua';

  @override
  String get settingsLocaleCs => 'Ceco';

  @override
  String get settingsLocaleEn => 'Inglese';

  @override
  String get readerZoomOutHint => 'Pizzica per ridurre lo zoom';

  @override
  String errorMessage(String message) {
    return 'Errore: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Carica $title';
  }

  @override
  String get navClear => 'Cancella';

  @override
  String get readerShowSummary => 'Riassunto';

  @override
  String get readerShowOriginal => 'Originale';

  @override
  String get summaryPickBook => 'Scegli un libro per iniziare';

  @override
  String get summaryUnavailable => 'Riassunto non disponibile';

  @override
  String get originalTextMissing =>
      'Nessun testo originale per questo passo — scegli un capitolo';

  @override
  String get cloudNoTerms => 'Nessun termine';

  @override
  String get settingsServerSection => 'Server';

  @override
  String get settingsSummaryLanguage => 'Lingua dei riassunti';
}
