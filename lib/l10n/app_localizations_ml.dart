// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'തിരഞ്ഞെടുത്ത എല്ലാ വാക്കുകളും ഉള്ള വിഭാഗമില്ല';

  @override
  String get navClearFilters => 'ഫിൽട്ടറുകൾ മായ്ക്കുക';

  @override
  String cloudMoreWords(int count) {
    return '+$count കൂടി';
  }

  @override
  String get cloudSearchHint => 'പദങ്ങൾ തിരയുക...';

  @override
  String get summaryAiBadge => 'AI · തത്സമയം';

  @override
  String get summaryOfflineFallback =>
      'സെർവർ ലഭ്യമല്ല — മുൻകൂട്ടി തയ്യാറാക്കിയ സംഗ്രഹം കാണിക്കുന്നു';

  @override
  String get libraryTitle => 'ലൈബ്രറി';

  @override
  String get libraryEmpty => 'ഇതുവരെ പുസ്തകങ്ങളൊന്നുമില്ല';

  @override
  String get libraryLoadDemo => 'ഡെമോ പുസ്തകം ലോഡ് ചെയ്യുക';

  @override
  String get libraryLoading => 'പുസ്തകം ലോഡ് ചെയ്യുന്നു…';

  @override
  String get settingsTitle => 'ക്രമീകരണങ്ങൾ';

  @override
  String get settingsServerUrl => 'സെർവർ URL';

  @override
  String get settingsLocale => 'ഭാഷ';

  @override
  String get settingsLocaleCs => 'ചെക്ക്';

  @override
  String get settingsLocaleEn => 'ഇംഗ്ലീഷ്';

  @override
  String get readerZoomOutHint => 'സൂം ഔട്ട് ചെയ്യാൻ പിഞ്ച് ചെയ്യുക';

  @override
  String errorMessage(String message) {
    return 'പിശക്: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title ലോഡ് ചെയ്യുക';
  }

  @override
  String get navClear => 'മായ്ക്കുക';

  @override
  String get readerShowSummary => 'സംഗ്രഹം';

  @override
  String get readerShowOriginal => 'മൂലപാഠം';

  @override
  String get summaryPickBook => 'തുടങ്ങാൻ ഒരു പുസ്തകം തിരഞ്ഞെടുക്കുക';

  @override
  String get summaryUnavailable => 'സംഗ്രഹം ലഭ്യമല്ല';

  @override
  String get originalTextMissing =>
      'ഈ ഭാഗത്തിന് മൂലപാഠമില്ല — ഒരു അധ്യായം തിരഞ്ഞെടുക്കുക';

  @override
  String get cloudNoTerms => 'പദങ്ങളൊന്നുമില്ല';

  @override
  String get settingsServerSection => 'സെർവർ';

  @override
  String get settingsSummaryLanguage => 'സംഗ്രഹങ്ങളുടെ ഭാഷ';
}
