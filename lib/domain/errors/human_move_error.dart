import 'package:freezed_annotation/freezed_annotation.dart';

part 'human_move_error.freezed.dart';

@freezed
sealed class HumanMoveError with _$HumanMoveError {
  const factory notHumanTurn() = HumanMoveNotHumanTurn;

  const factory cellTaken(int index) = HumanMoveCellTaken;
}