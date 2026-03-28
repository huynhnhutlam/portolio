import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

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
    Locale('en'),
    Locale('vi'),
  ];

  /// No description provided for @menuAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get menuAbout;

  /// No description provided for @menuSkills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get menuSkills;

  /// No description provided for @menuExperience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get menuExperience;

  /// No description provided for @menuProjects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get menuProjects;

  /// No description provided for @menuServices.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get menuServices;

  /// No description provided for @menuContact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get menuContact;

  /// No description provided for @heroHello.
  ///
  /// In en, this message translates to:
  /// **'Hello, I am'**
  String get heroHello;

  /// No description provided for @heroContactBtn.
  ///
  /// In en, this message translates to:
  /// **'Contact Me'**
  String get heroContactBtn;

  /// No description provided for @heroDownloadBtn.
  ///
  /// In en, this message translates to:
  /// **'Download CV'**
  String get heroDownloadBtn;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get aboutTitle;

  /// No description provided for @aboutSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Get to know more about me'**
  String get aboutSubtitle;

  /// No description provided for @aboutYearsExp.
  ///
  /// In en, this message translates to:
  /// **'Years Experience'**
  String get aboutYearsExp;

  /// No description provided for @aboutProjectsCompleted.
  ///
  /// In en, this message translates to:
  /// **'Projects Completed'**
  String get aboutProjectsCompleted;

  /// No description provided for @aboutHappyClients.
  ///
  /// In en, this message translates to:
  /// **'Happy Clients'**
  String get aboutHappyClients;

  /// No description provided for @aboutTechnologies.
  ///
  /// In en, this message translates to:
  /// **'Technologies'**
  String get aboutTechnologies;

  /// No description provided for @skillsTitle.
  ///
  /// In en, this message translates to:
  /// **'My Skills'**
  String get skillsTitle;

  /// No description provided for @skillsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Technologies & Tools I work with'**
  String get skillsSubtitle;

  /// No description provided for @experienceTitle.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experienceTitle;

  /// No description provided for @experienceSubtitle.
  ///
  /// In en, this message translates to:
  /// **'My professional journey'**
  String get experienceSubtitle;

  /// No description provided for @projectsTitle.
  ///
  /// In en, this message translates to:
  /// **'Featured Projects'**
  String get projectsTitle;

  /// No description provided for @projectsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Some things I have built'**
  String get projectsSubtitle;

  /// No description provided for @projectsSourceCode.
  ///
  /// In en, this message translates to:
  /// **'Source Code'**
  String get projectsSourceCode;

  /// No description provided for @projectsViewLive.
  ///
  /// In en, this message translates to:
  /// **'View Live'**
  String get projectsViewLive;

  /// No description provided for @servicesTitle.
  ///
  /// In en, this message translates to:
  /// **'My Services'**
  String get servicesTitle;

  /// No description provided for @servicesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'What can I do for you'**
  String get servicesSubtitle;

  /// No description provided for @certificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Certifications'**
  String get certificationsTitle;

  /// No description provided for @certificationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'My academic & professional achievements'**
  String get certificationsSubtitle;

  /// No description provided for @contactTitle.
  ///
  /// In en, this message translates to:
  /// **'Get In Touch'**
  String get contactTitle;

  /// No description provided for @contactSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Let\'s work together'**
  String get contactSubtitle;

  /// No description provided for @contactDescription.
  ///
  /// In en, this message translates to:
  /// **'Have an idea or a unique project? My inbox is always open. Whether you have a question or just want to say hi, I\'ll try my best to get back to you!'**
  String get contactDescription;

  /// No description provided for @contactFieldName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get contactFieldName;

  /// No description provided for @contactFieldHintName.
  ///
  /// In en, this message translates to:
  /// **'Your Full Name'**
  String get contactFieldHintName;

  /// No description provided for @contactFieldEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get contactFieldEmail;

  /// No description provided for @contactFieldHintEmail.
  ///
  /// In en, this message translates to:
  /// **'Your Email Address'**
  String get contactFieldHintEmail;

  /// No description provided for @contactFieldMessage.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get contactFieldMessage;

  /// No description provided for @contactFieldHintMessage.
  ///
  /// In en, this message translates to:
  /// **'Tell me about your project...'**
  String get contactFieldHintMessage;

  /// No description provided for @contactSendBtn.
  ///
  /// In en, this message translates to:
  /// **'Send Message'**
  String get contactSendBtn;

  /// No description provided for @footerDesignedBy.
  ///
  /// In en, this message translates to:
  /// **'Designed & Built by Lam Huynh'**
  String get footerDesignedBy;

  /// No description provided for @footerCopyright.
  ///
  /// In en, this message translates to:
  /// **'© {year} All rights reserved.'**
  String footerCopyright(String year);

  /// No description provided for @toggleTheme.
  ///
  /// In en, this message translates to:
  /// **'Toggle Theme'**
  String get toggleTheme;

  /// No description provided for @langEn.
  ///
  /// In en, this message translates to:
  /// **'EN'**
  String get langEn;

  /// No description provided for @langVi.
  ///
  /// In en, this message translates to:
  /// **'VI'**
  String get langVi;

  /// No description provided for @mobileMenu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get mobileMenu;

  /// No description provided for @backToTop.
  ///
  /// In en, this message translates to:
  /// **'Back to top'**
  String get backToTop;

  /// No description provided for @myRole.
  ///
  /// In en, this message translates to:
  /// **'Flutter / Mobile & Web Developer'**
  String get myRole;

  /// No description provided for @myDescription.
  ///
  /// In en, this message translates to:
  /// **'I build robust, performant, and beautiful applications focusing on great user experiences using Flutter. Passionate about UI/UX design and scalable architectures.'**
  String get myDescription;

  /// No description provided for @aboutDescription.
  ///
  /// In en, this message translates to:
  /// **'I am a passionate software engineer with a strong focus on building responsive and high-performance cross-platform applications. Over the years, I have successfully delivered many complex projects from ideation to production.'**
  String get aboutDescription;
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
      <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
