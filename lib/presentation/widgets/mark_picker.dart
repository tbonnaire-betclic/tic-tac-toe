import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';
import 'package:tic_tac_toe/presentation/l10n/l10n.dart';
import 'package:tic_tac_toe/presentation/providers/human_mark_provider.dart';
import 'package:tic_tac_toe/presentation/theme/game_theme.dart';
import 'package:tic_tac_toe/presentation/widgets/mark_view.dart';

/// Lets the human choose which mark to play.
class MarkPicker extends ConsumerWidget {
  const MarkPicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(humanMarkProvider);
    return Row(
      mainAxisAlignment: .center,
      spacing: 16,
      children: [
        for (final mark in Mark.values)
          _MarkOption(
            mark: mark,
            selected: mark == selected,
            onTap: () => ref.read(humanMarkProvider.notifier).select(mark),
          ),
      ],
    );
  }
}

class _MarkOption extends StatelessWidget {
  const _MarkOption({
    required this.mark,
    required this.selected,
    required this.onTap,
  });

  final Mark mark;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = GameTheme.of(context);
    return Semantics(
      button: true,
      selected: selected,
      label: context.l10n.markPickerOptionLabel(mark),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            color: theme.cell,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: selected ? theme.button : const Color(0x00000000),
              width: 3,
            ),
          ),
          child: MarkView(mark: mark),
        ),
      ),
    );
  }
}