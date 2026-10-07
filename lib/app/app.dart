import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:riverpod_annotation/experimental/scope.dart';
import 'package:tic_tac_toe/di/match_config_provider.dart';
import 'package:tic_tac_toe/presentation/l10n/l10n.dart';
import 'package:tic_tac_toe/presentation/providers/game_ui_state_notifier.dart';
import 'package:tic_tac_toe/presentation/screens/home_screen.dart';
import 'package:tic_tac_toe/presentation/theme/game_theme.dart';

@Dependencies([matchConfig, GameUiStateNotifier])
class TicTacToeApp extends StatelessWidget {
  const TicTacToeApp({super.key});

  @override
  Widget build(BuildContext context) => WidgetsApp(
    onGenerateTitle: (context) => context.l10n.appTitle,
    // Only the widgets delegate: the app uses no Material or Cupertino widgets.
    localizationsDelegates: const [AppLocalizations.delegate, GlobalWidgetsLocalizations.delegate],
    supportedLocales: AppLocalizations.supportedLocales,
    color: const Color(0xFF386A20),
    home: const HomeScreen(),
    pageRouteBuilder: <T>(settings, builder) => PageRouteBuilder<T>(
      settings: settings,
      pageBuilder: (context, _, _) => builder(context),
    ),
    builder: (context, navigator) => GameTheme(
      data: .fromBrightness(MediaQuery.platformBrightnessOf(context)),
      child: navigator!,
    ),
  );
}
