import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';

part 'game_state.freezed.dart';

@freezed
abstract class GameState with _$GameState {
  const factory({
    /// Board cells, indexed by `row * 3 + col`. `null` means empty.
    @Default([null, null, null, null, null, null, null, null, null]) List<Mark?> cells,
    @Default(Mark.cross) Mark currentPlayer,
  }) = _GameState;

  const new _();

  /// An empty board. Cross always plays first.
  static const initial = GameState();

  static const _lines = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], // rows
    [0, 3, 6], [1, 4, 7], [2, 5, 8], // columns
    [0, 4, 8], [2, 4, 6], // diagonals
  ];

  /// Indices of the empty cells, in board order.
  List<int> get emptyCells => [
    for (var i = 0; i < cells.length; i++)
      if (cells[i] == null) i,
  ];

  /// The indices of the winning line, or null if nobody has won yet.
  List<int>? get winningLine {
    for (final line in _lines) {
      final first = cells[line[0]];
      if (first != null && first == cells[line[1]] && first == cells[line[2]]) {
        return line;
      }
    }
    return null;
  }

  Mark? get winner {
    final line = winningLine;
    return line == null ? null : cells[line.first];
  }

  bool get isDraw => winner == null && !cells.contains(null);

  bool get isOver => winner != null || isDraw;

  /// Whether [mark] is the one to play next.
  bool isTurnOf(Mark mark) => !isOver && currentPlayer == mark;

  /// Returns the state after [currentPlayer] plays at [index].
  /// Invalid moves (occupied cell or finished game) return this state unchanged.
  GameState play(int index) {
    if (isOver || cells[index] != null) return this;
    return copyWith(
      cells: [...cells]..[index] = currentPlayer,
      currentPlayer: currentPlayer.opponent,
    );
  }
}