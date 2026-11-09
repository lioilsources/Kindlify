// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'ఎంచుకున్న అన్ని పదాలు ఉన్న విభాగం ఏదీ లేదు';

  @override
  String get navClearFilters => 'ఫిల్టర్‌లను క్లియర్ చేయండి';

  @override
  String cloudMoreWords(int count) {
    return '+మరో $count';
  }

  @override
  String get cloudSearchHint => 'పదాలను వెతకండి...';

  @override
  String get summaryAiBadge => 'AI · లైవ్';

  @override
  String get summaryOfflineFallback =>
      'సర్వర్ అందుబాటులో లేదు — ముందే లెక్కించిన సారాంశం చూపబడుతోంది';

  @override
  String get libraryTitle => 'లైబ్రరీ';

  @override
  String get libraryEmpty => 'ఇంకా పుస్తకాలు లేవు';

  @override
  String get libraryLoadDemo => 'డెమో పుస్తకాన్ని లోడ్ చేయండి';

  @override
  String get libraryLoading => 'పుస్తకం లోడ్ అవుతోంది…';

  @override
  String get settingsTitle => 'సెట్టింగ్‌లు';

  @override
  String get settingsServerUrl => 'సర్వర్ URL';

  @override
  String get settingsLocale => 'భాష';

  @override
  String get settingsLocaleCs => 'చెక్';

  @override
  String get settingsLocaleEn => 'ఇంగ్లీష్';

  @override
  String get readerZoomOutHint => 'జూమ్ అవుట్ చేయడానికి పించ్ చేయండి';

  @override
  String errorMessage(String message) {
    return 'లోపం: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title లోడ్ చేయండి';
  }

  @override
  String get navClear => 'క్లియర్ చేయండి';

  @override
  String get readerShowSummary => 'సారాంశం';

  @override
  String get readerShowOriginal => 'మూల పాఠం';

  @override
  String get summaryPickBook => 'ప్రారంభించడానికి ఒక పుస్తకాన్ని ఎంచుకోండి';

  @override
  String get summaryUnavailable => 'సారాంశం అందుబాటులో లేదు';

  @override
  String get originalTextMissing =>
      'ఈ భాగానికి మూల పాఠం లేదు — ఒక అధ్యాయాన్ని ఎంచుకోండి';

  @override
  String get cloudNoTerms => 'పదాలు లేవు';

  @override
  String get settingsServerSection => 'సర్వర్';

  @override
  String get settingsSummaryLanguage => 'సారాంశాల భాష';
}
