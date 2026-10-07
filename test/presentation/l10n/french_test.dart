import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_annotation/experimental/scope.dart';
import 'package:tic_tac_toe/app/app.dart';
import 'package:tic_tac_toe/di/bot_engine_factory_provider.dart';
import 'package:tic_tac_toe/di/match_config_provider.dart';
import 'package:tic_tac_toe/presentation/providers/game_ui_state_notifier.dart';

import '../../helpers/fake_bot_engine.dart';

@Dependencies([matchConfig, GameUiStateNotifier])
void main() {
  testWidgets('the app follows a French device locale', (tester) async {
    tester.platformDispatcher.localesTestValue = const [Locale('fr', 'FR')];
    addTearDown(tester.platformDispatcher.clearLocalesTestValue);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          botEngineFactoryProvider.overrideWithValue((_) => FakeBotEngine([3, 4])),
        ],
        child: const TicTacToeApp(),
      ),
    );

    expect(find.text('Morpion'), findsOneWidget);
    expect(find.text('Choisissez votre adversaire'), findsOneWidget);
    expect(find.bySemanticsLabel('Jouer avec le rond'), findsOneWidget);

    await tester.tap(find.text('Bot facile'));
    await tester.pumpAndSettle();
    expect(find.text('À vous de jouer'), findsOneWidget);
    expect(find.bySemanticsLabel('Case 1 vide'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey(0)));
    await tester.pumpAndSettle();
    expect(find.bySemanticsLabel('Croix en case 1'), findsOneWidget);
  });

  testWidgets('an unsupported locale falls back to English', (tester) async {
    tester.platformDispatcher.localesTestValue = const [Locale('de', 'DE')];
    addTearDown(tester.platformDispatcher.clearLocalesTestValue);

    await tester.pumpWidget(const ProviderScope(child: TicTacToeApp()));
    expect(find.text('Choose your opponent'), findsOneWidget);
  });
}