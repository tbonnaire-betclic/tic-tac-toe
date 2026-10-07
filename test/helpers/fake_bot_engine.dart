import 'dart:async';

import 'package:tic_tac_toe/domain/core/result.dart';
import 'package:tic_tac_toe/domain/engines/bot_engine.dart';
import 'package:tic_tac_toe/domain/errors/bot_move_error.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';

/// Plays [moves] in order. When [manual] is true, each move waits for [respond].
class FakeBotEngine implements BotEngine {
  FakeBotEngine(this.moves, {this.manual = false});

  final List<int> moves;
  final bool manual;
  final requests = <GameState>[];
  late Completer<void> _pending;

  @override
  AsyncResult<int, BotMoveError> nextMove(GameState state) async {
    requests.add(state);
    final move = moves.removeAt(0);
    if (manual) {
      _pending = Completer<void>();
      await _pending.future;
    }
    return Success(move);
  }

  void respond() => _pending.complete();
}

/// Always fails with [error].
class FailingBotEngine implements BotEngine {
  const FailingBotEngine([this.error = const BotMoveError.engineUnavailable()]);

  final BotMoveError error;

  @override
  AsyncResult<int, BotMoveError> nextMove(GameState state) async => Failure(error);
}

/// Breaks the [BotEngine] contract by throwing.
class ThrowingBotEngine implements BotEngine {
  const ThrowingBotEngine();

  @override
  AsyncResult<int, BotMoveError> nextMove(GameState state) => throw StateError('engine crashed');
}
