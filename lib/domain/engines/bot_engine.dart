import 'package:tic_tac_toe/domain/core/result.dart';
import 'package:tic_tac_toe/domain/errors/bot_move_error.dart';
import 'package:tic_tac_toe/domain/models/bot_level.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';

/// Computes moves for a bot. Implementations may be local algorithms,
/// external libraries or remote APIs.
abstract interface class BotEngine {
  /// Returns the index of an empty cell to play in [state], for
  /// [GameState.currentPlayer]. Only called when the game is not over.
  ///
  /// Implementations must not throw: failures are returned as
  /// [BotMoveError.engineUnavailable].
  AsyncResult<int, BotMoveError> nextMove(GameState state);
}

/// Creates the [BotEngine] for a [BotLevel].
typedef BotEngineFactory = BotEngine Function(BotLevel level);
