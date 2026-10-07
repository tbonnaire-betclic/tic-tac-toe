import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';
import 'package:tic_tac_toe/app/app.dart';
import 'package:tic_tac_toe/di/match_config_provider.dart';
import 'package:tic_tac_toe/presentation/providers/game_ui_state_notifier.dart';

@Dependencies([matchConfig, GameUiStateNotifier])
void main() {
  runApp(const ProviderScope(child: TicTacToeApp()));
}
