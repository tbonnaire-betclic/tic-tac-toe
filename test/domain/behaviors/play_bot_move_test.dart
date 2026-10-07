import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/domain/behaviors/play_bot_move.dart';
import 'package:tic_tac_toe/domain/engines/bot_engine.dart';
import 'package:tic_tac_toe/domain/errors/bot_move_error.dart';
import 'package:tic_tac_toe/domain/models/bot_level.dart';
import 'package:tic_tac_toe/domain/models/game_state.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';
import 'package:tic_tac_toe/domain/models/match_config.dart';

import '../../helpers/fake_bot_engine.dart';
import '../../helpers/game_state_helpers.dart';

void main() {
  const config = MatchConfig(botLevel: BotLevel.easy, humanMark: Mark.cross);

  PlayBotMove playBotMove(BotEngine engine) => PlayBotMove(engine, config);

  test('plays the engine move', () async {
    final result = await playBotMove(FakeBotEngine([4]))(playAll([0]));
    expect(result.getOrNull()?.cells[4], Mark.circle);
  });

  test('fails when it is not the bot turn', () async {
    final engine = FakeBotEngine([4]);
    final result = await playBotMove(engine)(GameState.initial);
    expect(result.exceptionOrNull(), const BotMoveError.notBotTurn());
    expect(engine.requests, isEmpty);
  });

  test('rejects a taken cell from the engine', () async {
    final result = await playBotMove(FakeBotEngine([0]))(playAll([0]));
    expect(result.exceptionOrNull(), const BotMoveError.invalidMove(0));
  });

  test('rejects an out of range cell from the engine', () async {
    final result = await playBotMove(FakeBotEngine([9]))(playAll([0]));
    expect(result.exceptionOrNull(), const BotMoveError.invalidMove(9));
  });

  test('forwards an engine failure', () async {
    final result = await playBotMove(const FailingBotEngine())(playAll([0]));
    expect(result.exceptionOrNull(), const BotMoveError.engineUnavailable());
  });

  test('turns a throwing engine into a failure', () async {
    final result = await playBotMove(const ThrowingBotEngine())(playAll([0]));
    expect(result.exceptionOrNull(), isA<BotMoveEngineUnavailable>());
  });
}
