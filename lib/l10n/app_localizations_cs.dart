// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'Žádná sekce neobsahuje všechna vybraná slova';

  @override
  String get navClearFilters => 'Zrušit filtry';

  @override
  String cloudMoreWords(int count) {
    return '+$count dalších';
  }

  @override
  String get cloudSearchHint => 'Hledat termíny...';

  @override
  String get summaryAiBadge => 'AI · živě';

  @override
  String get summaryOfflineFallback =>
      'Server není dostupný – zobrazuji předem vypočtený souhrn';

  @override
  String get libraryTitle => 'Knihovna';

  @override
  String get libraryEmpty => 'Žádné knihy';

  @override
  String get libraryLoadDemo => 'Načíst ukázkovou knihu';

  @override
  String get libraryLoading => 'Načítám knihu…';

  @override
  String get settingsTitle => 'Nastavení';

  @override
  String get settingsServerUrl => 'URL serveru';

  @override
  String get settingsLocale => 'Jazyk';

  @override
  String get settingsLocaleCs => 'Čeština';

  @override
  String get settingsLocaleEn => 'Angličtina';

  @override
  String get readerZoomOutHint => 'Přiblíž pro zoom-out';
}
