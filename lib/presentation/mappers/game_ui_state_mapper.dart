import 'package:tic_tac_toe/domain/errors/bot_move_error.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';
import 'package:tic_tac_toe/domain/models/match_config.dart';
import 'package:tic_tac_toe/presentation/state/game_ui_state.dart';

extension GameUiStateMapper on GameState {
  GameUiState toUiState({required MatchConfig config, BotMoveError? botError}) {
    final winningLine = this.winningLine ?? const <int>[];
    return GameUiState(
      cells: [
        for (var i = 0; i < cells.length; i++) CellUiState(mark: cells[i], highlighted: winningLine.contains(i)),
      ],
      status: _status(config, botError),
      showEndActions: isOver || botError != null,
    );
  }

  GameStatus _status(MatchConfig config, BotMoveError? botError) {
    if (winner case final winner?) {
      return winner == config.humanMark ? GameStatus.youWin : GameStatus.botWins;
    }
    if (isDraw) return GameStatus.draw;
    if (botError != null) return GameStatus.botFailed;
    return isTurnOf(config.humanMark) ? GameStatus.yourTurn : GameStatus.botThinking;
  }
}
