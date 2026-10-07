import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/di/bot_engine_factory_provider.dart';
import 'package:tic_tac_toe/di/match_config_provider.dart';
import 'package:tic_tac_toe/domain/behaviors/play_bot_move.dart';
import 'package:tic_tac_toe/domain/behaviors/play_human_move.dart';

part 'behavior_providers.g.dart';

// Behaviors are exposed as functions only: callers never see the classes.

@Riverpod(dependencies: [matchConfig])
PlayHumanMoveFun playHumanMove(Ref ref) => PlayHumanMove(ref.watch(matchConfigProvider)).call;

@Riverpod(dependencies: [matchConfig])
PlayBotMoveFun playBotMove(Ref ref) {
  final config = ref.watch(matchConfigProvider);
  final engine = ref.watch(botEngineFactoryProvider)(config.botLevel);
  return PlayBotMove(engine, config).call;
}
