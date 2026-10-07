import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';

part 'game_ui_state.freezed.dart';

enum GameStatus { yourTurn, botThinking, youWin, botWins, draw, botFailed }

@freezed
abstract class GameUiState with _$GameUiState {
  const factory({
    required List<CellUiState> cells,
    required GameStatus status,

    /// Rematch and home actions, offered once the match cannot continue.
    required bool showEndActions,
  }) = _GameUiState;
}

@freezed
abstract class CellUiState with _$CellUiState {
  const factory({
    required bool highlighted,
    Mark? mark,
  }) = _CellUiState;
}
