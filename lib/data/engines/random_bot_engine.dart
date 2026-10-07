import 'dart:math';

import 'package:tic_tac_toe/domain/core/result.dart';
import 'package:tic_tac_toe/domain/engines/bot_engine.dart';
import 'package:tic_tac_toe/domain/errors/bot_move_error.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';

/// Plays a random empty cell.
class RandomBotEngine implements BotEngine {
  RandomBotEngine({Random? random}) : _random = random ?? Random();

  final Random _random;

  @override
  AsyncResult<int, BotMoveError> nextMove(GameState state) async => Success(_computeMove(state));

  int _computeMove(GameState state) {
    final emptyCells = state.emptyCells;
    return emptyCells[_random.nextInt(emptyCells.length)];
  }
}
