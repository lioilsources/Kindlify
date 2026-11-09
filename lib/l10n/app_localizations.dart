import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_cs.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('cs'),
    Locale('en'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Kindlify'**
  String get appTitle;

  /// No description provided for @navNoSections.
  ///
  /// In en, this message translates to:
  /// **'No sections match all selected words'**
  String get navNoSections;

  /// No description provided for @navClearFilters.
  ///
  /// In en, this message translates to:
  /// **'Clear filters'**
  String get navClearFilters;

  /// No description provided for @cloudMoreWords.
  ///
  /// In en, this message translates to:
  /// **'+{count} more'**
  String cloudMoreWords(int count);

  /// No description provided for @cloudSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search terms...'**
  String get cloudSearchHint;

  /// No description provided for @summaryAiBadge.
  ///
  /// In en, this message translates to:
  /// **'AI · live'**
  String get summaryAiBadge;

  /// No description provided for @summaryOfflineFallback.
  ///
  /// In en, this message translates to:
  /// **'Server unavailable — showing pre-computed summary'**
  String get summaryOfflineFallback;

  /// No description provided for @libraryTitle.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get libraryTitle;

  /// No description provided for @libraryEmpty.
  ///
  /// In en, this message translates to:
  /// **'No books yet'**
  String get libraryEmpty;

  /// No description provided for @libraryLoadDemo.
  ///
  /// In en, this message translates to:
  /// **'Load demo book'**
  String get libraryLoadDemo;

  /// No description provided for @libraryLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading book…'**
  String get libraryLoading;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsServerUrl.
  ///
  /// In en, this message translates to:
  /// **'Server URL'**
  String get settingsServerUrl;

  /// No description provided for @settingsLocale.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLocale;

  /// No description provided for @settingsLocaleCs.
  ///
  /// In en, this message translates to:
  /// **'Czech'**
  String get settingsLocaleCs;

  /// No description provided for @settingsLocaleEn.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get settingsLocaleEn;

  /// No description provided for @readerZoomOutHint.
  ///
  /// In en, this message translates to:
  /// **'Pinch to zoom out'**
  String get readerZoomOutHint;

  /// No description provided for @errorMessage.
  ///
  /// In en, this message translates to:
  /// **'Error: {message}'**
  String errorMessage(String message);

  /// Button that imports a bundled book; {title} is the book title from the bundle (content, not translated).
  ///
  /// In en, this message translates to:
  /// **'Load {title}'**
  String libraryLoadBook(String title);

  /// No description provided for @navClear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get navClear;

  /// Tooltip: switch the bottom panel back to the summary.
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get readerShowSummary;

  /// Tooltip: switch the bottom panel to the original text.
  ///
  /// In en, this message translates to:
  /// **'Original'**
  String get readerShowOriginal;

  /// No description provided for @summaryPickBook.
  ///
  /// In en, this message translates to:
  /// **'Select a book to begin'**
  String get summaryPickBook;

  /// No description provided for @summaryUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Summary not available'**
  String get summaryUnavailable;

  /// No description provided for @originalTextMissing.
  ///
  /// In en, this message translates to:
  /// **'No original text for this passage — choose a chapter'**
  String get originalTextMissing;

  /// No description provided for @cloudNoTerms.
  ///
  /// In en, this message translates to:
  /// **'No terms'**
  String get cloudNoTerms;

  /// No description provided for @settingsServerSection.
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get settingsServerSection;

  /// Language of the book summaries (content), not of the UI.
  ///
  /// In en, this message translates to:
  /// **'Summary language'**
  String get settingsSummaryLanguage;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['cs', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'cs':
      return AppLocalizationsCs();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
