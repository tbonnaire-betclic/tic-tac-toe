// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Tic Tac Toe';

  @override
  String get homePlayAs => 'Play as';

  @override
  String get homeCrossPlaysFirst => 'Cross always plays first';

  @override
  String get homeChooseOpponent => 'Choose your opponent';

  @override
  String botLevel(String level) {
    String _temp0 = intl.Intl.selectLogic(
      level,
      {
        'easy': 'Easy bot',
        'medium': 'Medium bot',
        'hard': 'Hard bot',
        'other': 'Bot',
      },
    );
    return '$_temp0';
  }

  @override
  String get gameStatusYourTurn => 'Your turn';

  @override
  String get gameStatusBotThinking => 'Bot is thinking…';

  @override
  String get gameStatusYouWin => 'You win!';

  @override
  String get gameStatusBotWins => 'The bot wins!';

  @override
  String get gameStatusDraw => 'Draw!';

  @override
  String get gameStatusBotFailed => 'The bot could not play';

  @override
  String get gameRematch => 'Rematch';

  @override
  String get gameHome => 'Home';

  @override
  String markPickerOption(String mark) {
    String _temp0 = intl.Intl.selectLogic(
      mark,
      {
        'cross': 'cross',
        'circle': 'circle',
        'other': '$mark',
      },
    );
    return 'Play as $_temp0';
  }

  @override
  String cellEmpty(int cell) {
    return 'Empty cell $cell';
  }

  @override
  String cellMarked(String mark, int cell) {
    String _temp0 = intl.Intl.selectLogic(
      mark,
      {
        'cross': 'Cross',
        'circle': 'Circle',
        'other': '$mark',
      },
    );
    return '$_temp0 at cell $cell';
  }
}
