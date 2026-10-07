import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/data/engines/minimax_bot_engine.dart';
import 'package:tic_tac_toe/data/engines/random_bot_engine.dart';
import 'package:tic_tac_toe/data/engines/tactical_bot_engine.dart';
import 'package:tic_tac_toe/di/bot_engine_factory_provider.dart';
import 'package:tic_tac_toe/domain/models/bot_level.dart';

void main() {
  for (final (level, type) in [
    (BotLevel.easy, RandomBotEngine),
    (BotLevel.medium, TacticalBotEngine),
    (BotLevel.hard, MinimaxBotEngine),
  ]) {
    test('$level uses $type', () {
      final container = ProviderContainer.test();
      final create = container.read(botEngineFactoryProvider);
      expect(create(level).runtimeType, type);
    });
  }
}
