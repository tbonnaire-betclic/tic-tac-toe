import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/presentation/theme/game_theme.dart';

class GameButton extends StatelessWidget {
  const GameButton({
    required this.label,
    required this.onPressed,
    super.key,
    this.filled = true,
  });

  final String label;
  final VoidCallback onPressed;

  /// Filled for primary actions, outlined for secondary ones.
  final bool filled;

  @override
  Widget build(BuildContext context) {
    final theme = GameTheme.of(context);
    return Semantics(
      button: true,
      child: GestureDetector(
        onTap: onPressed,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: filled ? theme.button : null,
            border: filled ? null : Border.all(color: theme.button, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: filled ? theme.buttonStyle : theme.buttonStyle.copyWith(color: theme.button),
            ),
          ),
        ),
      ),
    );
  }
}