// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_ui_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Runs the current match and exposes it as a [GameUiState].
///
/// The rules live in the domain behaviors; this class only sequences turns
/// and drops bot moves that arrive after a rematch.

@ProviderFor(GameUiStateNotifier)
final gameUiStateProvider = GameUiStateNotifierProvider._();

/// Runs the current match and exposes it as a [GameUiState].
///
/// The rules live in the domain behaviors; this class only sequences turns
/// and drops bot moves that arrive after a rematch.
final class GameUiStateNotifierProvider extends $NotifierProvider<GameUiStateNotifier, GameUiState> {
  /// Runs the current match and exposes it as a [GameUiState].
  ///
  /// The rules live in the domain behaviors; this class only sequences turns
  /// and drops bot moves that arrive after a rematch.
  GameUiStateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameUiStateProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[
          matchConfigProvider,
          playHumanMoveProvider,
          playBotMoveProvider,
        ],
        $allTransitiveDependencies: <ProviderOrFamily>[
          GameUiStateNotifierProvider.$allTransitiveDependencies0,
          GameUiStateNotifierProvider.$allTransitiveDependencies1,
          GameUiStateNotifierProvider.$allTransitiveDependencies2,
        ],
      );

  static final $allTransitiveDependencies0 = matchConfigProvider;
  static final $allTransitiveDependencies1 = playHumanMoveProvider;
  static final $allTransitiveDependencies2 = playBotMoveProvider;

  @override
  String debugGetCreateSourceHash() => _$gameUiStateNotifierHash();

  @$internal
  @override
  GameUiStateNotifier create() => GameUiStateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameUiState>(value),
    );
  }
}

String _$gameUiStateNotifierHash() => r'4e4c33ebec357f9793bd89437083c8d9f90bc7ba';

/// Runs the current match and exposes it as a [GameUiState].
///
/// The rules live in the domain behaviors; this class only sequences turns
/// and drops bot moves that arrive after a rematch.

abstract class _$GameUiStateNotifier extends $Notifier<GameUiState> {
  GameUiState build();

  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<GameUiState, GameUiState>;
    final element =
        ref.element as $ClassProviderElement<AnyNotifier<GameUiState, GameUiState>, GameUiState, Object?, Object?>;
    return element.handleCreate(ref, build);
  }
}