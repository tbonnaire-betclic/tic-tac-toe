import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_annotation/experimental/scope.dart';
import 'package:tic_tac_toe/app/app.dart';
import 'package:tic_tac_toe/di/bot_engine_factory_provider.dart';
import 'package:tic_tac_toe/di/match_config_provider.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';
import 'package:tic_tac_toe/presentation/providers/game_ui_state_notifier.dart';
import 'package:tic_tac_toe/presentation/widgets/mark_view.dart';

import '../helpers/fake_bot_engine.dart';

Finder findMark(Mark mark) => find.byWidgetPredicate(
  (widget) => widget is MarkView && widget.mark == mark,
);

@Dependencies([matchConfig, GameUiStateNotifier])
void main() {
  late FakeBotEngine bot;

  @Dependencies([matchConfig, GameUiStateNotifier])
  Future<void> startApp(WidgetTester tester, List<int> botMoves) async {
    bot = FakeBotEngine(botMoves);
    await tester.pumpWidget(
      ProviderScope(
        overrides: [botEngineFactoryProvider.overrideWithValue((_) => bot)],
        child: const TicTacToeApp(),
      ),
    );
  }

  Future<void> tap(WidgetTester tester, Finder finder) async {
    await tester.tap(finder);
    await tester.pumpAndSettle();
  }

  Future<void> tapCell(WidgetTester tester, int index) => tap(tester, find.byKey(ValueKey(index)));

  Finder visible(String text) => find.text(text).hitTestable();

  testWidgets('home screen lists every bot level', (tester) async {
    await startApp(tester, []);
    expect(find.text('Choose your opponent'), findsOneWidget);
    expect(find.text('Easy bot'), findsOneWidget);
    expect(find.text('Medium bot'), findsOneWidget);
    expect(find.text('Hard bot'), findsOneWidget);
  });

  testWidgets('game over actions only appear once the game is over', (
    tester,
  ) async {
    await startApp(tester, [3, 4]);
    await tap(tester, find.text('Hard bot'));

    expect(find.text('Hard bot'), findsOneWidget);
    expect(find.text('Your turn'), findsOneWidget);
    expect(visible('Rematch'), findsNothing);
    expect(visible('Home'), findsNothing);

    await tapCell(tester, 0);
    expect(findMark(Mark.cross), findsOneWidget);
    expect(findMark(Mark.circle), findsOneWidget);
    expect(visible('Rematch'), findsNothing);

    await tapCell(tester, 1);
    await tapCell(tester, 2);
    expect(find.text('You win!'), findsOneWidget);
    expect(visible('Rematch'), findsOneWidget);
    expect(visible('Home'), findsOneWidget);
  });

  testWidgets('rematch starts a new game at the same level', (tester) async {
    await startApp(tester, [3, 4]);
    await tap(tester, find.text('Easy bot'));
    for (final i in [0, 1, 2]) {
      await tapCell(tester, i);
    }

    await tap(tester, visible('Rematch'));
    expect(find.text('Easy bot'), findsOneWidget);
    expect(find.text('Your turn'), findsOneWidget);
    expect(findMark(Mark.cross), findsNothing);
    expect(visible('Rematch'), findsNothing);
  });

  testWidgets('home goes back to level selection with a fresh game', (
    tester,
  ) async {
    await startApp(tester, [3, 4, 3]);
    await tap(tester, find.text('Easy bot'));
    for (final i in [0, 1, 2]) {
      await tapCell(tester, i);
    }

    await tap(tester, visible('Home'));
    expect(find.text('Choose your opponent'), findsOneWidget);

    await tap(tester, find.text('Hard bot'));
    expect(find.text('Your turn'), findsOneWidget);
    expect(findMark(Mark.cross), findsNothing);
  });

  testWidgets('choosing circle lets the bot open the game', (tester) async {
    await startApp(tester, [4, 8]);
    await tap(tester, find.bySemanticsLabel('Play as circle'));
    await tap(tester, find.text('Medium bot'));

    expect(findMark(Mark.cross), findsOneWidget);
    expect(find.text('Your turn'), findsOneWidget);

    await tapCell(tester, 0);
    expect(findMark(Mark.circle), findsOneWidget);
  });
}
