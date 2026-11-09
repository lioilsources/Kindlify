// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'Kindlify';

  @override
  String get navNoSections => 'নির্বাচিত সব শব্দ মেলে এমন কোনো অংশ নেই';

  @override
  String get navClearFilters => 'ফিল্টার মুছুন';

  @override
  String cloudMoreWords(int count) {
    return '+আরও $countটি';
  }

  @override
  String get cloudSearchHint => 'শব্দ খুঁজুন...';

  @override
  String get summaryAiBadge => 'AI · লাইভ';

  @override
  String get summaryOfflineFallback =>
      'সার্ভার পাওয়া যাচ্ছে না — আগে থেকে তৈরি সারাংশ দেখানো হচ্ছে';

  @override
  String get libraryTitle => 'লাইব্রেরি';

  @override
  String get libraryEmpty => 'এখনো কোনো বই নেই';

  @override
  String get libraryLoadDemo => 'ডেমো বই লোড করুন';

  @override
  String get libraryLoading => 'বই লোড হচ্ছে…';

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String get settingsServerUrl => 'সার্ভারের URL';

  @override
  String get settingsLocale => 'ভাষা';

  @override
  String get settingsLocaleCs => 'চেক';

  @override
  String get settingsLocaleEn => 'ইংরেজি';

  @override
  String get readerZoomOutHint => 'ছোট করতে পিঞ্চ করুন';

  @override
  String errorMessage(String message) {
    return 'ত্রুটি: $message';
  }

  @override
  String libraryLoadBook(String title) {
    return '$title লোড করুন';
  }

  @override
  String get navClear => 'মুছুন';

  @override
  String get readerShowSummary => 'সারাংশ';

  @override
  String get readerShowOriginal => 'মূল পাঠ';

  @override
  String get summaryPickBook => 'শুরু করতে একটি বই বেছে নিন';

  @override
  String get summaryUnavailable => 'সারাংশ পাওয়া যায়নি';

  @override
  String get originalTextMissing =>
      'এই অংশের মূল পাঠ নেই — একটি অধ্যায় বেছে নিন';

  @override
  String get cloudNoTerms => 'কোনো শব্দ নেই';

  @override
  String get settingsServerSection => 'সার্ভার';

  @override
  String get settingsSummaryLanguage => 'সারাংশের ভাষা';
}
