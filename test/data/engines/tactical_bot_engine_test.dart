import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/data/engines/tactical_bot_engine.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';

import '../../helpers/game_state_helpers.dart';

void main() {
  group('TacticalBotEngine', () {
    test('takes a winning move', () async {
      // X X _
      // O O _
      // X _ _   bot (O) to play: 5 wins
      final state = playAll([0, 3, 1, 4, 6]);
      for (var seed = 0; seed < 20; seed++) {
        final bot = TacticalBotEngine(random: Random(seed));
        expect((await bot.nextMove(state)).getOrThrow(), 5);
      }
    });

    test('blocks the opponent', () async {
      // X X _
      // _ O _
      // _ _ _   bot (O) to play: must block 2
      final state = playAll([0, 4, 1]);
      for (var seed = 0; seed < 20; seed++) {
        final bot = TacticalBotEngine(random: Random(seed));
        expect((await bot.nextMove(state)).getOrThrow(), 2);
      }
    });

    test('prefers winning over blocking', () async {
      // X X _
      // O O _
      // _ _ X   bot (O) to play: 5 wins, 2 would only block
      final state = playAll([0, 3, 1, 4, 8]);
      expect((await TacticalBotEngine().nextMove(state)).getOrThrow(), 5);
    });

    test('plays a random empty cell when there is no threat', () async {
      final state = playAll([0]);
      final moves = <int>{};
      for (var seed = 0; seed < 50; seed++) {
        final move = (await TacticalBotEngine(random: Random(seed)).nextMove(state)).getOrThrow();
        expect(state.cells[move], isNull);
        moves.add(move);
      }
      expect(moves.length, greaterThan(1));
    });

    test('can be beaten with a fork', () async {
      // X X _
      // X O _
      // _ _ O   bot (O) to play: X threatens both 2 and 6
      const x = Mark.cross;
      const o = Mark.circle;
      const state = GameState(
        cells: [x, x, null, x, o, null, null, null, o],
        currentPlayer: o,
      );
      final move = (await TacticalBotEngine().nextMove(state)).getOrThrow();
      expect(move, anyOf(2, 6));

      final humanMove = move == 2 ? 6 : 2;
      expect(state.play(move).play(humanMove).winner, x);
    });
  });
}
