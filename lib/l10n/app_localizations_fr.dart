// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Aucune section ne contient tous les mots sélectionnés';

  @override
  String get navClearFilters => 'Effacer les filtres';

  @override
  String cloudMoreWords(int count) {
    return '+$count de plus';
  }

  @override
  String get cloudSearchHint => 'Rechercher des termes...';

  @override
  String get summaryAiBadge => 'IA · en direct';

  @override
  String get summaryOfflineFallback =>
      'Serveur indisponible — affichage du résumé précalculé';

  @override
  String get libraryTitle => 'Bibliothèque';

  @override
  String get libraryEmpty => 'Aucun livre pour l\'instant';

  @override
  String get libraryLoadDemo => 'Charger le livre de démonstration';

  @override
  String get libraryLoading => 'Chargement du livre…';

  @override
  String get settingsTitle => 'Réglages';

  @override
  String get settingsServerUrl => 'URL du serveur';

  @override
  String get settingsLocale => 'Langue';

  @override
  String get settingsLocaleCs => 'Tchèque';

  @override
  String get settingsLocaleEn => 'Anglais';

  @override
  String get readerZoomOutHint => 'Pincez pour dézoomer';

  @override
  String errorMessage(String message) {
    return 'Erreur : $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Charger $title';
  }

  @override
  String get navClear => 'Effacer';

  @override
  String get readerShowSummary => 'Résumé';

  @override
  String get readerShowOriginal => 'Original';

  @override
  String get summaryPickBook => 'Choisissez un livre pour commencer';

  @override
  String get summaryUnavailable => 'Résumé indisponible';

  @override
  String get originalTextMissing =>
      'Pas de texte original pour ce passage — choisissez un chapitre';

  @override
  String get cloudNoTerms => 'Aucun terme';

  @override
  String get settingsServerSection => 'Serveur';

  @override
  String get settingsSummaryLanguage => 'Langue des résumés';
}
