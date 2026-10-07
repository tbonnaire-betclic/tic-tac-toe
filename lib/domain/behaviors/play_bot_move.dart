import 'package:tic_tac_toe/domain/core/result.dart';
import 'package:tic_tac_toe/domain/engines/bot_engine.dart';
import 'package:tic_tac_toe/domain/errors/bot_move_error.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';
import 'package:tic_tac_toe/domain/models/match_config.dart';

typedef PlayBotMoveFun = AsyncResult<GameState, BotMoveError> Function(GameState state);

/// Asks the engine for a move and plays it, rejecting unplayable cells.
class PlayBotMove {
  const PlayBotMove(this._engine, this._config);

  final BotEngine _engine;
  final MatchConfig _config;

  AsyncResult<GameState, BotMoveError> call(GameState state) async {
    if (!state.isTurnOf(_config.botMark)) return const Failure(BotMoveError.notBotTurn());

    final Result<int, BotMoveError> result;
    try {
      result = await _engine.nextMove(state);
    } on Object catch (error) {
      // Engines should return failures, but a throwing one must not break the game.
      return Failure(BotMoveError.engineUnavailable(error));
    }

    return result.flatMap((move) {
      if (move < 0 || move >= state.cells.length || state.cells[move] != null) {
        return Failure(BotMoveError.invalidMove(move));
      }
      return Success(state.play(move));
    });
  }
}
