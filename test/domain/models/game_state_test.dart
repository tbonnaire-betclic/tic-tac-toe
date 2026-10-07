import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';

import '../../helpers/game_state_helpers.dart';

void main() {
  group('GameState', () {
    test('starts empty with cross to play', () {
      const state = GameState.initial;
      expect(state.cells, everyElement(isNull));
      expect(state.currentPlayer, Mark.cross);
      expect(state.winner, isNull);
      expect(state.isOver, isFalse);
    });

    test('play places the mark and switches player', () {
      final state = GameState.initial.play(4);
      expect(state.cells[4], Mark.cross);
      expect(state.currentPlayer, Mark.circle);
    });

    test('play does not mutate the previous state', () {
      const initial = GameState.initial;
      initial.play(0);
      expect(initial.cells[0], isNull);
    });

    test('playing an occupied cell is ignored', () {
      final state = GameState.initial.play(0);
      expect(state.play(0), same(state));
    });

    test('detects a row win', () {
      // X: 0 1 2, O: 3 4
      final state = playAll([0, 3, 1, 4, 2]);
      expect(state.winner, Mark.cross);
      expect(state.winningLine, [0, 1, 2]);
      expect(state.isOver, isTrue);
    });

    test('detects a column win', () {
      // X: 0 4 6, O: 2 5 8
      final state = playAll([0, 2, 4, 5, 6, 8]);
      expect(state.winner, Mark.circle);
      expect(state.winningLine, [2, 5, 8]);
    });

    test('detects a diagonal win', () {
      // X: 0 4 8, O: 1 2
      final state = playAll([0, 1, 4, 2, 8]);
      expect(state.winner, Mark.cross);
      expect(state.winningLine, [0, 4, 8]);
    });

    test('detects an anti-diagonal win', () {
      // X: 2 4 6, O: 0 1
      final state = playAll([2, 0, 4, 1, 6]);
      expect(state.winningLine, [2, 4, 6]);
    });

    test('detects a draw', () {
      // X O X
      // X O O
      // O X X
      final state = playAll([0, 1, 2, 4, 3, 5, 7, 6, 8]);
      expect(state.winner, isNull);
      expect(state.isDraw, isTrue);
      expect(state.isOver, isTrue);
    });

    test('a win on the last move is not a draw', () {
      // X O X
      // O X O
      // O X X  -> X wins on 8 with the board full
      final state = playAll([0, 1, 2, 3, 4, 5, 7, 6, 8]);
      expect(state.winner, Mark.cross);
      expect(state.isDraw, isFalse);
    });

    test('no moves are accepted once the game is over', () {
      final state = playAll([0, 3, 1, 4, 2]);
      expect(state.play(8), same(state));
    });

    test('isTurnOf is false for both players once the game is over', () {
      expect(GameState.initial.isTurnOf(Mark.cross), isTrue);
      expect(GameState.initial.isTurnOf(Mark.circle), isFalse);
      final over = playAll([0, 3, 1, 4, 2]);
      expect(over.isTurnOf(Mark.cross), isFalse);
      expect(over.isTurnOf(Mark.circle), isFalse);
    });

    test('emptyCells lists free cells in board order', () {
      expect(GameState.initial.emptyCells, [0, 1, 2, 3, 4, 5, 6, 7, 8]);
      expect(playAll([4, 0]).emptyCells, [1, 2, 3, 5, 6, 7, 8]);
    });

    test('states with the same board and player are equal', () {
      expect(playAll([0, 4]), playAll([0, 4]));
      expect(playAll([0, 4]).hashCode, playAll([0, 4]).hashCode);
      expect(playAll([0, 4]), isNot(playAll([4, 0])));
      expect(
        const GameState(currentPlayer: Mark.circle),
        isNot(GameState.initial),
      );
    });
  });
}
