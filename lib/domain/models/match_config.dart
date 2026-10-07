import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tic_tac_toe/domain/models/bot_level.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';

part 'match_config.freezed.dart';

/// Settings chosen before a match starts.
@freezed
abstract class MatchConfig with _$MatchConfig {
  const factory({
    required BotLevel botLevel,
    required Mark humanMark,
  }) = _MatchConfig;

  const new _();

  Mark get botMark => humanMark.opponent;
}