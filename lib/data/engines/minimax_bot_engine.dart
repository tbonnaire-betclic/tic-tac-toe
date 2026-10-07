import 'dart:math';

import 'package:tic_tac_toe/domain/core/result.dart';
import 'package:tic_tac_toe/domain/engines/bot_engine.dart';
import 'package:tic_tac_toe/domain/errors/bot_move_error.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';

/// Plays perfectly using minimax with alpha-beta pruning. It never loses.
class MinimaxBotEngine implements BotEngine {
  @override
  AsyncResult<int, BotMoveError> nextMove(GameState state) async => Success(_computeMove(state));

  int _computeMove(GameState state) {
    final me = state.currentPlayer;
    var bestScore = -_maxScore;
    var bestMove = -1;
    for (final move in state.emptyCells) {
      final score = _minimax(state.play(move), me, -_maxScore, _maxScore);
      if (score > bestScore) {
        bestScore = score;
        bestMove = move;
      }
    }
    return bestMove;
  }

  /// Higher than any reachable score: a win scores 10 minus the depth.
  static const _maxScore = 100;

  /// Scores [state] from [me]'s point of view. Faster wins and slower losses
  /// score better, so the bot finishes the game as soon as it can.
  int _minimax(GameState state, Mark me, int initialAlpha, int initialBeta) {
    var alpha = initialAlpha;
    var beta = initialBeta;
    final empty = state.emptyCells;
    if (state.winner case final winner?) {
      final depthBonus = empty.length + 1;
      return winner == me ? depthBonus : -depthBonus;
    }
    if (state.isDraw) return 0;

    final maximizing = state.currentPlayer == me;
    var best = maximizing ? -_maxScore : _maxScore;
    for (final move in empty) {
      final score = _minimax(state.play(move), me, alpha, beta);
      if (maximizing) {
        best = max(best, score);
        alpha = max(alpha, best);
      } else {
        best = min(best, score);
        beta = min(beta, best);
      }
      if (alpha >= beta) break;
    }
    return best;
  }
}
