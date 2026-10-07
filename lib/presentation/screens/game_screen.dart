import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';
import 'package:tic_tac_toe/di/match_config_provider.dart';
import 'package:tic_tac_toe/domain/models/match_config.dart';
import 'package:tic_tac_toe/presentation/l10n/l10n.dart';
import 'package:tic_tac_toe/presentation/providers/game_ui_state_notifier.dart';
import 'package:tic_tac_toe/presentation/state/game_ui_state.dart';
import 'package:tic_tac_toe/presentation/theme/game_theme.dart';
import 'package:tic_tac_toe/presentation/widgets/game_button.dart';
import 'package:tic_tac_toe/presentation/widgets/game_grid.dart';

@Dependencies([matchConfig, GameUiStateNotifier])
class GameScreen extends ConsumerWidget {
  const GameScreen({super.key});

  /// A route starting a new match with [config].
  /// Each route gets its own game, disposed when the route is popped.
  static Route<void> route(MatchConfig config) => PageRouteBuilder(
    pageBuilder: (_, _, _) => ProviderScope(
      overrides: [matchConfigProvider.overrideWithValue(config)],
      child: const GameScreen(),
    ),
    transitionsBuilder: (_, animation, _, child) => FadeTransition(opacity: animation, child: child),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(matchConfigProvider);
    final status = ref.watch(gameUiStateProvider.select((state) => state.status));
    final showEndActions = ref.watch(gameUiStateProvider.select((state) => state.showEndActions));
    final theme = GameTheme.of(context);

    return ColoredBox(
      color: theme.background,
      child: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              mainAxisSize: .min,
              children: [
                Text(
                  context.l10n.botLevelLabel(config.botLevel),
                  style: theme.buttonStyle.copyWith(color: theme.foreground),
                ),
                Text(status.label(context.l10n), style: theme.statusStyle),
                const GameGrid(),
                _EndActions(visible: showEndActions),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension on GameStatus {
  String label(AppLocalizations l10n) => switch (this) {
    GameStatus.yourTurn => l10n.gameStatusYourTurn,
    GameStatus.botThinking => l10n.gameStatusBotThinking,
    GameStatus.youWin => l10n.gameStatusYouWin,
    GameStatus.botWins => l10n.gameStatusBotWins,
    GameStatus.draw => l10n.gameStatusDraw,
    GameStatus.botFailed => l10n.gameStatusBotFailed,
  };
}

/// Rematch and home buttons, shown only once the match cannot continue.
/// Their space is always reserved so the grid does not move.
@Dependencies([GameUiStateNotifier])
class _EndActions extends ConsumerWidget {
  const _EndActions({required this.visible});

  final bool visible;

  @override
  Widget build(BuildContext context, WidgetRef ref) => IgnorePointer(
    ignoring: !visible,
    child: ExcludeSemantics(
      excluding: !visible,
      child: AnimatedOpacity(
        opacity: visible ? 1 : 0,
        duration: const Duration(milliseconds: 200),
        child: Row(
          mainAxisAlignment: .center,
          spacing: 12,
          children: [
            GameButton(
              label: context.l10n.gameRematch,
              onPressed: () => unawaited(ref.read(gameUiStateProvider.notifier).rematch()),
            ),
            GameButton(
              label: context.l10n.gameHome,
              filled: false,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    ),
  );
}
