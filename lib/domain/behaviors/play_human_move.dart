import 'package:tic_tac_toe/domain/core/result.dart';
import 'package:tic_tac_toe/domain/errors/human_move_error.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';
import 'package:tic_tac_toe/domain/models/match_config.dart';

typedef PlayHumanMoveFun = Result<GameState, HumanMoveError> Function(GameState state, int index);

/// Plays the human mark at a cell.
class PlayHumanMove {
  const PlayHumanMove(this._config);

  final MatchConfig _config;

  Result<GameState, HumanMoveError> call(GameState state, int index) {
    if (!state.isTurnOf(_config.humanMark)) return const Failure(HumanMoveError.notHumanTurn());
    if (state.cells[index] != null) return Failure(HumanMoveError.cellTaken(index));
    return Success(state.play(index));
  }
}
