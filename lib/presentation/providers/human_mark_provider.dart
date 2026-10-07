import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';

part 'human_mark_provider.g.dart';

/// The mark the human chose on the home screen.
@Riverpod(keepAlive: true)
class HumanMark extends _$HumanMark {
  @override
  Mark build() => Mark.cross;

  // A named mutation reads better than a setter on a notifier.
  // ignore: use_setters_to_change_properties
  void select(Mark mark) => state = mark;
}