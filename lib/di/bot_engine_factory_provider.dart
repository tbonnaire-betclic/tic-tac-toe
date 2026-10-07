import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/data/engines/minimax_bot_engine.dart';
import 'package:tic_tac_toe/data/engines/random_bot_engine.dart';
import 'package:tic_tac_toe/data/engines/tactical_bot_engine.dart';
import 'package:tic_tac_toe/domain/engines/bot_engine.dart';
import 'package:tic_tac_toe/domain/models/bot_level.dart';

part 'bot_engine_factory_provider.g.dart';

/// Composition root for bots: the only place that knows the engine classes.
@riverpod
BotEngineFactory botEngineFactory(Ref ref) =>
    (level) => switch (level) {
      BotLevel.easy => RandomBotEngine(),
      BotLevel.medium => TacticalBotEngine(),
      BotLevel.hard => MinimaxBotEngine(),
    };