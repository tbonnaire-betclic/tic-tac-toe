import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/domain/errors/bot_move_error.dart';
import 'package:tic_tac_toe/domain/models/bot_level.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';
import 'package:tic_tac_toe/domain/models/match_config.dart';
import 'package:tic_tac_toe/presentation/mappers/game_ui_state_mapper.dart';
import 'package:tic_tac_toe/presentation/state/game_ui_state.dart';

import '../../helpers/game_state_helpers.dart';

void main() {
  const asCross = MatchConfig(botLevel: BotLevel.easy, humanMark: Mark.cross);
  const asCircle = MatchConfig(botLevel: BotLevel.easy, humanMark: Mark.circle);

  test('maps cells and highlights the winning line', () {
    final ui = playAll([0, 3, 1, 4, 2]).toUiState(config: asCross);
    expect(ui.cells[0], const CellUiState(mark: Mark.cross, highlighted: true));
    expect(ui.cells[3], const CellUiState(mark: Mark.circle, highlighted: false));
    expect(ui.cells[8], const CellUiState(highlighted: false));
  });

  for (final (description, state, config, botError, status, showEndActions) in [
    ('human to play', GameState.initial, asCross, null, GameStatus.yourTurn, false),
    ('bot to play', GameState.initial, asCircle, null, GameStatus.botThinking, false),
    ('human won', playAll([0, 3, 1, 4, 2]), asCross, null, GameStatus.youWin, true),
    ('bot won', playAll([0, 3, 1, 4, 2]), asCircle, null, GameStatus.botWins, true),
    ('draw', playAll([0, 1, 2, 4, 3, 5, 7, 6, 8]), asCross, null, GameStatus.draw, true),
    ('bot failed', playAll([0]), asCross, const BotMoveError.engineUnavailable(), GameStatus.botFailed, true),
  ]) {
    test('status when $description', () {
      final ui = state.toUiState(config: config, botError: botError);
      expect(ui.status, status);
      expect(ui.showEndActions, showEndActions);
    });
  }
}
