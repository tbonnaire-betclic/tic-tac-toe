import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/domain/behaviors/play_human_move.dart';
import 'package:tic_tac_toe/domain/errors/human_move_error.dart';
import 'package:tic_tac_toe/domain/models/bot_level.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';
import 'package:tic_tac_toe/domain/models/match_config.dart';

import '../../helpers/game_state_helpers.dart';

void main() {
  PlayHumanMove playHumanMove(Mark humanMark) =>
      PlayHumanMove(MatchConfig(botLevel: BotLevel.easy, humanMark: humanMark));

  test('places the human mark', () {
    final result = playHumanMove(Mark.cross)(GameState.initial, 4);
    expect(result.getOrNull()?.cells[4], Mark.cross);
  });

  test('fails on the bot turn', () {
    final result = playHumanMove(Mark.circle)(GameState.initial, 4);
    expect(result.exceptionOrNull(), const HumanMoveError.notHumanTurn());
  });

  test('fails on a taken cell', () {
    final result = playHumanMove(Mark.cross)(playAll([4, 0]), 4);
    expect(result.exceptionOrNull(), const HumanMoveError.cellTaken(4));
  });

  test('fails once the game is over', () {
    final result = playHumanMove(Mark.cross)(playAll([0, 3, 1, 4, 2]), 8);
    expect(result.exceptionOrNull(), const HumanMoveError.notHumanTurn());
  });
}
