import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_annotation/experimental/scope.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/di/bot_engine_factory_provider.dart';
import 'package:tic_tac_toe/di/match_config_provider.dart';
import 'package:tic_tac_toe/domain/engines/bot_engine.dart';
import 'package:tic_tac_toe/domain/models/bot_level.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';
import 'package:tic_tac_toe/domain/models/match_config.dart';
import 'package:tic_tac_toe/presentation/providers/game_ui_state_notifier.dart';
import 'package:tic_tac_toe/presentation/state/game_ui_state.dart';

import '../../helpers/fake_bot_engine.dart';

@Dependencies([GameUiStateNotifier])
void main() {
  late ProviderContainer container;

  @Dependencies([GameUiStateNotifier])
  void setUpMatch(BotEngine engine, {Mark humanMark = Mark.cross}) {
    container = ProviderContainer.test(
      overrides: [
        matchConfigProvider.overrideWithValue(MatchConfig(botLevel: BotLevel.easy, humanMark: humanMark)),
        botEngineFactoryProvider.overrideWithValue((_) => engine),
      ],
    )..listen(gameUiStateProvider, (_, _) {});
  }

  @Dependencies([GameUiStateNotifier])
  GameUiState state() => container.read(gameUiStateProvider);
  @Dependencies([GameUiStateNotifier])
  GameUiStateNotifier game() => container.read(gameUiStateProvider.notifier);
  @Dependencies([GameUiStateNotifier])
  Mark? markAt(int index) => state().cells[index].mark;

  /// Lets a bot move scheduled from `build` complete.
  Future<void> settle() => Future<void>.delayed(Duration.zero);

  test('bot answers after the human move', () async {
    setUpMatch(FakeBotEngine([4]));
    await game().play(0);
    expect(markAt(0), Mark.cross);
    expect(markAt(4), Mark.circle);
    expect(state().status, GameStatus.yourTurn);
  });

  test('bot opens when the human plays circle', () async {
    setUpMatch(FakeBotEngine([4, 8]), humanMark: Mark.circle);
    expect(state().status, GameStatus.botThinking);
    await settle();
    expect(markAt(4), Mark.cross);
    expect(state().status, GameStatus.yourTurn);

    await game().play(0);
    expect(markAt(0), Mark.circle);
  });

  test('human taps are ignored while the bot is thinking', () async {
    final bot = FakeBotEngine([4], manual: true);
    setUpMatch(bot);
    final turn = game().play(0);
    await game().play(1);
    expect(markAt(1), isNull);

    bot.respond();
    await turn;
    expect(markAt(4), Mark.circle);
  });

  test('bot is not asked to play once the human has won', () async {
    final bot = FakeBotEngine([3, 4]);
    setUpMatch(bot);
    for (final i in [0, 1, 2]) {
      await game().play(i);
    }
    expect(state().status, GameStatus.youWin);
    expect(bot.requests, hasLength(2));
  });

  test('playing an occupied cell does not trigger the bot', () async {
    final bot = FakeBotEngine([4]);
    setUpMatch(bot);
    await game().play(0);
    await game().play(4);
    expect(bot.requests, hasLength(1));
  });

  test('bot move is dropped on rematch while thinking', () async {
    final bot = FakeBotEngine([4], manual: true);
    setUpMatch(bot);
    final turn = game().play(0);
    await game().rematch();

    bot.respond();
    await turn;
    expect(state().cells.map((cell) => cell.mark), everyElement(isNull));
    expect(state().status, GameStatus.yourTurn);
  });

  test('rematch lets the bot open again when it plays cross', () async {
    setUpMatch(FakeBotEngine([4, 0]), humanMark: Mark.circle);
    await settle();
    await game().rematch();
    expect(markAt(0), Mark.cross);
    expect(markAt(4), isNull);
  });

  test('a bot failure ends the match with rematch available', () async {
    setUpMatch(const FailingBotEngine());
    await game().play(0);
    expect(state().status, GameStatus.botFailed);
    expect(state().showEndActions, isTrue);
    expect(markAt(0), Mark.cross);

    await game().rematch();
    expect(state().status, GameStatus.yourTurn);
    expect(state().showEndActions, isFalse);
  });
}
