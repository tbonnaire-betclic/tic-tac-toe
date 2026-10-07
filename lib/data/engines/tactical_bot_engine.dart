import 'dart:math';

import 'package:tic_tac_toe/domain/core/result.dart';
import 'package:tic_tac_toe/domain/engines/bot_engine.dart';
import 'package:tic_tac_toe/domain/errors/bot_move_error.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';

/// Wins when it can, blocks an immediate threat, otherwise plays randomly.
/// It cannot see forks coming, so it can be beaten.
class TacticalBotEngine implements BotEngine {
  TacticalBotEngine({Random? random}) : _random = random ?? Random();

  final Random _random;

  @override
  AsyncResult<int, BotMoveError> nextMove(GameState state) async => Success(_computeMove(state));

  int _computeMove(GameState state) {
    final emptyCells = state.emptyCells;
    final me = state.currentPlayer;
    final asOpponent = GameState(
      cells: state.cells,
      currentPlayer: me.opponent,
    );

    for (final i in emptyCells) {
      if (state.play(i).winner == me) return i;
    }
    for (final i in emptyCells) {
      if (asOpponent.play(i).winner == me.opponent) return i;
    }
    return emptyCells[_random.nextInt(emptyCells.length)];
  }
}
