import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/data/engines/random_bot_engine.dart';

import '../../helpers/game_state_helpers.dart';

void main() {
  group('RandomBotEngine', () {
    test('always picks an empty cell', () async {
      final bot = RandomBotEngine(random: Random(42));
      final state = playAll([0, 4, 8]);
      for (var i = 0; i < 100; i++) {
        final move = (await bot.nextMove(state)).getOrThrow();
        expect(state.cells[move], isNull);
      }
    });

    test('picks the only empty cell left', () async {
      final bot = RandomBotEngine();
      // X O X
      // X O O
      // O X _
      final state = playAll([0, 1, 2, 4, 3, 5, 7, 6]);
      expect((await bot.nextMove(state)).getOrThrow(), 8);
    });
  });
}
