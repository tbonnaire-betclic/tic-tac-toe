import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';
import 'package:tic_tac_toe/presentation/l10n/l10n.dart';
import 'package:tic_tac_toe/presentation/providers/cell_index_provider.dart';
import 'package:tic_tac_toe/presentation/providers/game_ui_state_notifier.dart';
import 'package:tic_tac_toe/presentation/theme/game_theme.dart';
import 'package:tic_tac_toe/presentation/widgets/mark_view.dart';

@Dependencies([GameUiStateNotifier])
class GameGrid extends StatelessWidget {
  const GameGrid({super.key});

  @override
  Widget build(BuildContext context) => GridView.count(
    primary: false,
    shrinkWrap: true,
    padding: const EdgeInsets.all(10),
    crossAxisCount: 3,
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: [
      for (var i = 0; i < 9; i++)
        ProviderScope(
          key: ValueKey(i),
          overrides: [cellIndexProvider.overrideWithValue(i)],
          child: const GameGridCell(),
        ),
    ],
  );
}

@Dependencies([cellIndex, GameUiStateNotifier])
class GameGridCell extends ConsumerWidget {
  const GameGridCell({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(cellIndexProvider);
    final cell = ref.watch(gameUiStateProvider.select((state) => state.cells[index]));
    final mark = cell.mark;

    final theme = GameTheme.of(context);
    return Semantics(
      button: true,
      label: context.l10n.cellLabel(index, mark),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => unawaited(ref.read(gameUiStateProvider.notifier).play(index)),
        child: ColoredBox(
          color: cell.highlighted ? theme.winningCell : theme.cell,
          child: MarkView(mark: mark),
        ),
      ),
    );
  }
}
