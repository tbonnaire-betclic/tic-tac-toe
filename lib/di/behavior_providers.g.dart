// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'behavior_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(playHumanMove)
final playHumanMoveProvider = PlayHumanMoveProvider._();

final class PlayHumanMoveProvider extends $FunctionalProvider<PlayHumanMoveFun, PlayHumanMoveFun, PlayHumanMoveFun>
    with $Provider<PlayHumanMoveFun> {
  PlayHumanMoveProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playHumanMoveProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[matchConfigProvider],
        $allTransitiveDependencies: <ProviderOrFamily>[
          PlayHumanMoveProvider.$allTransitiveDependencies0,
        ],
      );

  static final $allTransitiveDependencies0 = matchConfigProvider;

  @override
  String debugGetCreateSourceHash() => _$playHumanMoveHash();

  @$internal
  @override
  $ProviderElement<PlayHumanMoveFun> $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  PlayHumanMoveFun create(Ref ref) {
    return playHumanMove(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlayHumanMoveFun value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlayHumanMoveFun>(value),
    );
  }
}

String _$playHumanMoveHash() => r'6b522e6c050dfabd937cf08589a3d936dcd55035';

@ProviderFor(playBotMove)
final playBotMoveProvider = PlayBotMoveProvider._();

final class PlayBotMoveProvider extends $FunctionalProvider<PlayBotMoveFun, PlayBotMoveFun, PlayBotMoveFun>
    with $Provider<PlayBotMoveFun> {
  PlayBotMoveProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playBotMoveProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[matchConfigProvider],
        $allTransitiveDependencies: <ProviderOrFamily>[
          PlayBotMoveProvider.$allTransitiveDependencies0,
        ],
      );

  static final $allTransitiveDependencies0 = matchConfigProvider;

  @override
  String debugGetCreateSourceHash() => _$playBotMoveHash();

  @$internal
  @override
  $ProviderElement<PlayBotMoveFun> $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  PlayBotMoveFun create(Ref ref) {
    return playBotMove(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlayBotMoveFun value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlayBotMoveFun>(value),
    );
  }
}

String _$playBotMoveHash() => r'276bfab10dfcddc80c88bacb9846f277421e8717';
