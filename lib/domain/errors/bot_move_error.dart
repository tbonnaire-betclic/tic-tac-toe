import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_move_error.freezed.dart';

@freezed
sealed class BotMoveError with _$BotMoveError {
  const factory notBotTurn() = BotMoveNotBotTurn;

  /// The engine returned a cell that cannot be played.
  const factory invalidMove(int move) = BotMoveInvalidMove;

  /// The engine could not compute a move (network, library failure…).
  const factory engineUnavailable([Object? cause]) = BotMoveEngineUnavailable;
}
