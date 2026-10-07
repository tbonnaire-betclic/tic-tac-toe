import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';
import 'package:tic_tac_toe/di/match_config_provider.dart';
import 'package:tic_tac_toe/domain/models/bot_level.dart';
import 'package:tic_tac_toe/domain/models/match_config.dart';
import 'package:tic_tac_toe/presentation/l10n/l10n.dart';
import 'package:tic_tac_toe/presentation/providers/game_ui_state_notifier.dart';
import 'package:tic_tac_toe/presentation/providers/human_mark_provider.dart';
import 'package:tic_tac_toe/presentation/screens/game_screen.dart';
import 'package:tic_tac_toe/presentation/theme/game_theme.dart';
import 'package:tic_tac_toe/presentation/widgets/game_button.dart';
import 'package:tic_tac_toe/presentation/widgets/mark_picker.dart';

@Dependencies([matchConfig, GameUiStateNotifier])
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = GameTheme.of(context);
    final l10n = context.l10n;
    return ColoredBox(
      color: theme.background,
      child: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 320),
            child: Column(
              mainAxisSize: .min,
              crossAxisAlignment: .stretch,
              spacing: 16,
              children: [
                Text(
                  l10n.appTitle,
                  textAlign: TextAlign.center,
                  style: theme.statusStyle.copyWith(fontSize: 36),
                ),
                Text(
                  l10n.homePlayAs,
                  textAlign: TextAlign.center,
                  style: theme.statusStyle,
                ),
                const MarkPicker(),
                Text(
                  l10n.homeCrossPlaysFirst,
                  textAlign: TextAlign.center,
                  style: theme.buttonStyle.copyWith(color: theme.foreground),
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.homeChooseOpponent,
                  textAlign: TextAlign.center,
                  style: theme.statusStyle,
                ),
                for (final level in BotLevel.values)
                  GameButton(
                    label: l10n.botLevelLabel(level),
                    onPressed: () => Navigator.of(context).push(
                      GameScreen.route(
                        MatchConfig(
                          botLevel: level,
                          humanMark: ref.read(humanMarkProvider),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
