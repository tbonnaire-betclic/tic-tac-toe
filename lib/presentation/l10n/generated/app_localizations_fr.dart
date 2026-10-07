// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Morpion';

  @override
  String get homePlayAs => 'Jouer avec';

  @override
  String get homeCrossPlaysFirst => 'La croix commence toujours';

  @override
  String get homeChooseOpponent => 'Choisissez votre adversaire';

  @override
  String botLevel(String level) {
    String _temp0 = intl.Intl.selectLogic(
      level,
      {
        'easy': 'Bot facile',
        'medium': 'Bot moyen',
        'hard': 'Bot difficile',
        'other': 'Bot',
      },
    );
    return '$_temp0';
  }

  @override
  String get gameStatusYourTurn => 'À vous de jouer';

  @override
  String get gameStatusBotThinking => 'Le bot réfléchit…';

  @override
  String get gameStatusYouWin => 'Vous avez gagné !';

  @override
  String get gameStatusBotWins => 'Le bot a gagné !';

  @override
  String get gameStatusDraw => 'Match nul !';

  @override
  String get gameStatusBotFailed => 'Le bot n’a pas pu jouer';

  @override
  String get gameRematch => 'Revanche';

  @override
  String get gameHome => 'Accueil';

  @override
  String markPickerOption(String mark) {
    String _temp0 = intl.Intl.selectLogic(
      mark,
      {
        'cross': 'la croix',
        'circle': 'le rond',
        'other': '$mark',
      },
    );
    return 'Jouer avec $_temp0';
  }

  @override
  String cellEmpty(int cell) {
    return 'Case $cell vide';
  }

  @override
  String cellMarked(String mark, int cell) {
    String _temp0 = intl.Intl.selectLogic(
      mark,
      {
        'cross': 'Croix',
        'circle': 'Rond',
        'other': '$mark',
      },
    );
    return '$_temp0 en case $cell';
  }
}
