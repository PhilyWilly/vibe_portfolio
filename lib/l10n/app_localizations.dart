import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
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

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
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
    Locale('de'),
    Locale('en'),
  ];

  /// No description provided for @siteTitle.
  ///
  /// In en, this message translates to:
  /// **'Portfolio'**
  String get siteTitle;

  /// No description provided for @helloWorld.
  ///
  /// In en, this message translates to:
  /// **'Hello World!'**
  String get helloWorld;

  /// No description provided for @impressum.
  ///
  /// In en, this message translates to:
  /// **'Impressum'**
  String get impressum;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @info.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// No description provided for @skills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skills;

  /// No description provided for @socials.
  ///
  /// In en, this message translates to:
  /// **'Socials'**
  String get socials;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get age;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Germany'**
  String get country;

  /// No description provided for @gradeIntermediate.
  ///
  /// In en, this message translates to:
  /// **'Intermediate'**
  String get gradeIntermediate;

  /// No description provided for @gradeAdvanced.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get gradeAdvanced;

  /// No description provided for @gradeExpert.
  ///
  /// In en, this message translates to:
  /// **'Expert'**
  String get gradeExpert;

  /// No description provided for @projectIbdScanner.
  ///
  /// In en, this message translates to:
  /// **'IBD Food Scanner'**
  String get projectIbdScanner;

  /// No description provided for @projectIbdDescription.
  ///
  /// In en, this message translates to:
  /// **'Its main functionality is to scan barcodes and provide information about the food product, including whether it is suitable for people with Inflammatory Bowel Disease (IBD).'**
  String get projectIbdDescription;

  /// No description provided for @projectDeepNodeDescription.
  ///
  /// In en, this message translates to:
  /// **'An application to connect data. It uses a graph to visualize the relationships between different data and their connections. It can connect JSON, CSV, Excel, SQL, APIs, and more.'**
  String get projectDeepNodeDescription;

  /// No description provided for @historyRealschule.
  ///
  /// In en, this message translates to:
  /// **'Realschule Graduation (1,8)'**
  String get historyRealschule;

  /// No description provided for @historyAbitur.
  ///
  /// In en, this message translates to:
  /// **'Abitur Graduation (2,4)'**
  String get historyAbitur;

  /// No description provided for @historyRehatec.
  ///
  /// In en, this message translates to:
  /// **'Rehatec GmbH - Software Developer'**
  String get historyRehatec;

  /// No description provided for @historyRehatecEnd.
  ///
  /// In en, this message translates to:
  /// **'today'**
  String get historyRehatecEnd;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @notFound.
  ///
  /// In en, this message translates to:
  /// **'404 - Page Not Found'**
  String get notFound;

  /// No description provided for @impressumLegalHeading.
  ///
  /// In en, this message translates to:
  /// **'Information according to § 5 DDG'**
  String get impressumLegalHeading;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'E-Mail:'**
  String get emailLabel;

  /// No description provided for @privacyPolicyUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last updated: September 2026'**
  String get privacyPolicyUpdated;

  /// No description provided for @privacyResponsibleTitle.
  ///
  /// In en, this message translates to:
  /// **'1. Responsible'**
  String get privacyResponsibleTitle;

  /// No description provided for @privacyResponsibleText.
  ///
  /// In en, this message translates to:
  /// **'The data processing on this website is carried out by David Ernestus Wesch, Wiesenweg 9, 69250 Schönau, Germany, info@davidwesch.de.'**
  String get privacyResponsibleText;

  /// No description provided for @privacyGeneralTitle.
  ///
  /// In en, this message translates to:
  /// **'2. General Information'**
  String get privacyGeneralTitle;

  /// No description provided for @privacyGeneralText.
  ///
  /// In en, this message translates to:
  /// **'This website is a personal portfolio. There are no user accounts, contact forms, comment functions or other input fields. I therefore do not collect personal data from you directly. Data is only processed in the scope described below.'**
  String get privacyGeneralText;

  /// No description provided for @privacyHostingTitle.
  ///
  /// In en, this message translates to:
  /// **'3. Hosting and Server Logs (Cloudflare)'**
  String get privacyHostingTitle;

  /// No description provided for @privacyHostingText.
  ///
  /// In en, this message translates to:
  /// **'This website is hosted and delivered via Cloudflare (Cloudflare, Inc., 101 Townsend St., San Francisco, CA 94107, USA). When you visit the website, your browser automatically sends technical data to Cloudflare\'s servers, including your IP address, the date and time of access, the requested page, and browser and device information. This processing is technically necessary to ensure the website is delivered securely and reliably.\n\nLegal basis: Art. 6(1)(f) GDPR (legitimate interest in secure and efficient operation of the website).\n\nData may be transferred to the United States. Cloudflare is certified under the EU-US Data Privacy Framework, and I have concluded a data processing agreement with Cloudflare. Further information: https://www.cloudflare.com/privacypolicy/'**
  String get privacyHostingText;

  /// No description provided for @privacyAnalyticsTitle.
  ///
  /// In en, this message translates to:
  /// **'4. Web Analytics (Cloudflare Web Analytics)'**
  String get privacyAnalyticsTitle;

  /// No description provided for @privacyAnalyticsText.
  ///
  /// In en, this message translates to:
  /// **'I use Cloudflare Web Analytics to understand how many people visit the website and how it performs. According to Cloudflare, this service works without cookies and without storing information on your device and does not track individual visitors across websites or build profiles. Only aggregated statistics such as pages visited, referrer, country, browser and device type, and performance data are evaluated.\n\nLegal basis: Art. 6(1)(f) GDPR (legitimate interest in improving and securing the website).\n\nYou can object to this processing at any time (see Section 6).'**
  String get privacyAnalyticsText;

  /// No description provided for @privacyLinksTitle.
  ///
  /// In en, this message translates to:
  /// **'5. Links to External Websites'**
  String get privacyLinksTitle;

  /// No description provided for @privacyLinksText.
  ///
  /// In en, this message translates to:
  /// **'This website links to my profiles on GitHub, LinkedIn, Instagram and X (Twitter). These are simple links. No data is transferred to these providers until you click a link. After that, the respective provider\'s privacy policy applies.'**
  String get privacyLinksText;

  /// No description provided for @privacyRightsTitle.
  ///
  /// In en, this message translates to:
  /// **'6. Your Rights'**
  String get privacyRightsTitle;

  /// No description provided for @privacyRightsText.
  ///
  /// In en, this message translates to:
  /// **'You have the right to access, rectification, erasure, restriction of processing, data portability and objection to processing based on legitimate interests (Art. 6(1)(f) GDPR). If you want to exercise these rights, contact me at info@davidwesch.de.'**
  String get privacyRightsText;

  /// No description provided for @privacyComplaintTitle.
  ///
  /// In en, this message translates to:
  /// **'7. Right to Lodge a Complaint'**
  String get privacyComplaintTitle;

  /// No description provided for @privacyComplaintText.
  ///
  /// In en, this message translates to:
  /// **'You have the right to file a complaint with a competent data protection authority. The authority responsible for me is the State Commissioner for Data Protection and Freedom of Information of Baden-Württemberg, Lautenschlagerstraße 20, 70173 Stuttgart, Germany.'**
  String get privacyComplaintText;

  /// No description provided for @privacyChangesTitle.
  ///
  /// In en, this message translates to:
  /// **'8. Changes'**
  String get privacyChangesTitle;

  /// No description provided for @privacyChangesText.
  ///
  /// In en, this message translates to:
  /// **'I may update this policy if the website or the legal framework changes.'**
  String get privacyChangesText;
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
      <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
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
