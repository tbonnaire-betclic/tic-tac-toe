import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en'), Locale('fr')];

  /// App name, shown as the window/tab title and on the home screen.
  ///
  /// In en, this message translates to:
  /// **'Tic Tac Toe'**
  String get appTitle;

  /// Home screen heading above the cross/circle picker.
  ///
  /// In en, this message translates to:
  /// **'Play as'**
  String get homePlayAs;

  /// Home screen hint below the mark picker.
  ///
  /// In en, this message translates to:
  /// **'Cross always plays first'**
  String get homeCrossPlaysFirst;

  /// Home screen heading above the bot level buttons.
  ///
  /// In en, this message translates to:
  /// **'Choose your opponent'**
  String get homeChooseOpponent;

  /// Name of a bot difficulty level, on home buttons and the game screen header.
  ///
  /// In en, this message translates to:
  /// **'{level, select, easy{Easy bot} medium{Medium bot} hard{Hard bot} other{Bot}}'**
  String botLevel(String level);

  /// Game status when the human must play.
  ///
  /// In en, this message translates to:
  /// **'Your turn'**
  String get gameStatusYourTurn;

  /// Game status while the bot computes its move.
  ///
  /// In en, this message translates to:
  /// **'Bot is thinking…'**
  String get gameStatusBotThinking;

  /// Game status when the human won.
  ///
  /// In en, this message translates to:
  /// **'You win!'**
  String get gameStatusYouWin;

  /// Game status when the bot won.
  ///
  /// In en, this message translates to:
  /// **'The bot wins!'**
  String get gameStatusBotWins;

  /// Game status when the board is full without a winner.
  ///
  /// In en, this message translates to:
  /// **'Draw!'**
  String get gameStatusDraw;

  /// Game status when the bot engine failed to provide a move.
  ///
  /// In en, this message translates to:
  /// **'The bot could not play'**
  String get gameStatusBotFailed;

  /// Button starting a new game at the same level.
  ///
  /// In en, this message translates to:
  /// **'Rematch'**
  String get gameRematch;

  /// Button going back to the home screen.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get gameHome;

  /// Screen reader label of a mark option on the home screen.
  ///
  /// In en, this message translates to:
  /// **'Play as {mark, select, cross{cross} circle{circle} other{{mark}}}'**
  String markPickerOption(String mark);

  /// Screen reader label of an empty board cell, numbered 1 to 9.
  ///
  /// In en, this message translates to:
  /// **'Empty cell {cell}'**
  String cellEmpty(int cell);

  /// Screen reader label of a played board cell, numbered 1 to 9.
  ///
  /// In en, this message translates to:
  /// **'{mark, select, cross{Cross} circle{Circle} other{{mark}}} at cell {cell}'**
  String cellMarked(String mark, int cell);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
