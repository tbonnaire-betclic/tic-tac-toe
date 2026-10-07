import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/data/engines/minimax_bot_engine.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';

import '../../helpers/game_state_helpers.dart';

void main() {
  final bot = MinimaxBotEngine();

  group('MinimaxBotEngine', () {
    test('takes a winning move', () async {
      // X X _
      // O O _
      // X _ _   bot (O) to play: 5 wins
      final state = playAll([0, 3, 1, 4, 6]);
      expect((await bot.nextMove(state)).getOrThrow(), 5);
    });

    test('blocks the opponent', () async {
      // X X _
      // _ O _
      // _ _ _   bot (O) to play: must block 2
      final state = playAll([0, 4, 1]);
      expect((await bot.nextMove(state)).getOrThrow(), 2);
    });

    test('prefers winning over blocking', () async {
      // X X _
      // O O _
      // _ _ X   bot (O) to play: 5 wins, 2 would only block
      final state = playAll([0, 3, 1, 4, 8]);
      expect((await bot.nextMove(state)).getOrThrow(), 5);
    });

    for (final botMark in Mark.values) {
      test('never loses against any strategy when playing $botMark', () async {
        var games = 0;

        Future<void> explore(GameState state) async {
          if (state.isOver) {
            games++;
            expect(state.winner, isNot(botMark.opponent), reason: '$state');
            return;
          }
          if (state.currentPlayer == botMark) {
            await explore(state.play((await bot.nextMove(state)).getOrThrow()));
            return;
          }
          for (final i in state.emptyCells) {
            await explore(state.play(i));
          }
        }

        await explore(GameState.initial);
        expect(games, greaterThan(0));
      });
    }
  });
}
