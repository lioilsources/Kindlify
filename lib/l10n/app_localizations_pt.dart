// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Nenhuma seção contém todas as palavras selecionadas';

  @override
  String get navClearFilters => 'Limpar filtros';

  @override
  String cloudMoreWords(int count) {
    return '+$count mais';
  }

  @override
  String get cloudSearchHint => 'Pesquisar termos...';

  @override
  String get summaryAiBadge => 'IA · ao vivo';

  @override
  String get summaryOfflineFallback =>
      'Servidor indisponível — mostrando resumo pré-calculado';

  @override
  String get libraryTitle => 'Biblioteca';

  @override
  String get libraryEmpty => 'Nenhum livro ainda';

  @override
  String get libraryLoadDemo => 'Carregar livro de demonstração';

  @override
  String get libraryLoading => 'Carregando livro…';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get settingsServerUrl => 'URL do servidor';

  @override
  String get settingsLocale => 'Idioma';

  @override
  String get settingsLocaleCs => 'Tcheco';

  @override
  String get settingsLocaleEn => 'Inglês';

  @override
  String get readerZoomOutHint => 'Faça o gesto de pinça para diminuir o zoom';

  @override
  String errorMessage(String message) {
    return 'Erro: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Carregar $title';
  }

  @override
  String get navClear => 'Limpar';

  @override
  String get readerShowSummary => 'Resumo';

  @override
  String get readerShowOriginal => 'Original';

  @override
  String get summaryPickBook => 'Escolha um livro para começar';

  @override
  String get summaryUnavailable => 'Resumo indisponível';

  @override
  String get originalTextMissing =>
      'Não há texto original para este trecho — escolha um capítulo';

  @override
  String get cloudNoTerms => 'Nenhum termo';

  @override
  String get settingsServerSection => 'Servidor';

  @override
  String get settingsSummaryLanguage => 'Idioma dos resumos';
}

/// The translations for Portuguese, as used in Portugal (`pt_PT`).
class AppLocalizationsPtPt extends AppLocalizationsPt {
  AppLocalizationsPtPt() : super('pt_PT');

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections =>
      'Nenhuma secção contém todas as palavras selecionadas';

  @override
  String get navClearFilters => 'Limpar filtros';

  @override
  String cloudMoreWords(int count) {
    return '+$count mais';
  }

  @override
  String get cloudSearchHint => 'Pesquisar termos...';

  @override
  String get summaryAiBadge => 'IA · em direto';

  @override
  String get summaryOfflineFallback =>
      'Servidor indisponível — a mostrar o resumo pré-calculado';

  @override
  String get libraryTitle => 'Biblioteca';

  @override
  String get libraryEmpty => 'Ainda não há livros';

  @override
  String get libraryLoadDemo => 'Carregar livro de demonstração';

  @override
  String get libraryLoading => 'A carregar o livro…';

  @override
  String get settingsTitle => 'Definições';

  @override
  String get settingsServerUrl => 'URL do servidor';

  @override
  String get settingsLocale => 'Idioma';

  @override
  String get settingsLocaleCs => 'Checo';

  @override
  String get settingsLocaleEn => 'Inglês';

  @override
  String get readerZoomOutHint => 'Junte os dedos para reduzir o zoom';

  @override
  String errorMessage(String message) {
    return 'Erro: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return 'Carregar $title';
  }

  @override
  String get navClear => 'Limpar';

  @override
  String get readerShowSummary => 'Resumo';

  @override
  String get readerShowOriginal => 'Original';

  @override
  String get summaryPickBook => 'Escolha um livro para começar';

  @override
  String get summaryUnavailable => 'Resumo indisponível';

  @override
  String get originalTextMissing =>
      'Não há texto original para esta passagem — escolha um capítulo';

  @override
  String get cloudNoTerms => 'Nenhum termo';

  @override
  String get settingsServerSection => 'Servidor';

  @override
  String get settingsSummaryLanguage => 'Idioma dos resumos';
}
