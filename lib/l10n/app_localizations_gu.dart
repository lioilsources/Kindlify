// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'પસંદ કરેલા બધા શબ્દો ધરાવતો કોઈ વિભાગ નથી';

  @override
  String get navClearFilters => 'ફિલ્ટર સાફ કરો';

  @override
  String cloudMoreWords(int count) {
    return '+$count વધુ';
  }

  @override
  String get cloudSearchHint => 'શબ્દો શોધો...';

  @override
  String get summaryAiBadge => 'AI · લાઇવ';

  @override
  String get summaryOfflineFallback =>
      'સર્વર ઉપલબ્ધ નથી — પહેલેથી ગણાયેલો સારાંશ બતાવી રહ્યા છીએ';

  @override
  String get libraryTitle => 'લાઇબ્રેરી';

  @override
  String get libraryEmpty => 'હજી કોઈ પુસ્તક નથી';

  @override
  String get libraryLoadDemo => 'ડેમો પુસ્તક લોડ કરો';

  @override
  String get libraryLoading => 'પુસ્તક લોડ થઈ રહ્યું છે…';

  @override
  String get settingsTitle => 'સેટિંગ્સ';

  @override
  String get settingsServerUrl => 'સર્વર URL';

  @override
  String get settingsLocale => 'ભાષા';

  @override
  String get settingsLocaleCs => 'ચેક';

  @override
  String get settingsLocaleEn => 'અંગ્રેજી';

  @override
  String get readerZoomOutHint => 'ઝૂમ આઉટ કરવા માટે પિંચ કરો';

  @override
  String errorMessage(String message) {
    return 'ભૂલ: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title લોડ કરો';
  }

  @override
  String get navClear => 'સાફ કરો';

  @override
  String get readerShowSummary => 'સારાંશ';

  @override
  String get readerShowOriginal => 'મૂળ લખાણ';

  @override
  String get summaryPickBook => 'શરૂ કરવા માટે પુસ્તક પસંદ કરો';

  @override
  String get summaryUnavailable => 'સારાંશ ઉપલબ્ધ નથી';

  @override
  String get originalTextMissing => 'આ ભાગ માટે મૂળ લખાણ નથી — પ્રકરણ પસંદ કરો';

  @override
  String get cloudNoTerms => 'કોઈ શબ્દો નથી';

  @override
  String get settingsServerSection => 'સર્વર';

  @override
  String get settingsSummaryLanguage => 'સારાંશની ભાષા';
}
