import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/di/behavior_providers.dart';
import 'package:tic_tac_toe/di/match_config_provider.dart';
import 'package:tic_tac_toe/domain/behaviors/play_bot_move.dart';
import 'package:tic_tac_toe/domain/behaviors/play_human_move.dart';
import 'package:tic_tac_toe/domain/errors/bot_move_error.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';
import 'package:tic_tac_toe/domain/models/match_config.dart';
import 'package:tic_tac_toe/presentation/mappers/game_ui_state_mapper.dart';
import 'package:tic_tac_toe/presentation/state/game_ui_state.dart';

part 'game_ui_state_notifier.g.dart';

/// Runs the current match and exposes it as a [GameUiState].
///
/// The rules live in the domain behaviors; this class only sequences turns
/// and drops bot moves that arrive after a rematch.
@Riverpod(dependencies: [matchConfig, playHumanMove, playBotMove])
class GameUiStateNotifier extends _$GameUiStateNotifier {
  late MatchConfig _config;
  late PlayHumanMoveFun _playHumanMove;
  late PlayBotMoveFun _playBotMove;
  GameState _board = GameState.initial;
  BotMoveError? _botError;

  /// Incremented on rematch, so a bot move computed for a previous game is dropped.
  int _generation = 0;

  @override
  GameUiState build() {
    _config = ref.watch(matchConfigProvider);
    _playHumanMove = ref.watch(playHumanMoveProvider);
    _playBotMove = ref.watch(playBotMoveProvider);
    _board = GameState.initial;
    _botError = null;
    if (_board.isTurnOf(_config.botMark)) unawaited(Future.microtask(_playBotTurn));
    return _toUiState();
  }

  /// Plays the human move at [index], then lets the bot answer.
  /// Ignored when it is not the human's turn or the cell is taken.
  Future<void> play(int index) async {
    final next = _playHumanMove(_board, index).getOrNull();
    if (next == null) return;
    _update(next);
    await _playBotTurn();
  }

  Future<void> rematch() async {
    _generation++;
    _update(GameState.initial);
    await _playBotTurn();
  }

  Future<void> _playBotTurn() async {
    if (!ref.mounted || !_board.isTurnOf(_config.botMark)) return;
    final generation = _generation;
    final result = await _playBotMove(_board);
    if (!ref.mounted || generation != _generation) return;
    result.fold(_update, (error) => _update(_board, botError: error));
  }

  void _update(GameState board, {BotMoveError? botError}) {
    _board = board;
    _botError = botError;
    state = _toUiState();
  }

  GameUiState _toUiState() => _board.toUiState(config: _config, botError: _botError);
}
