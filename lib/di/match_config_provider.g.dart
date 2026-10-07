// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_config_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Settings of the current match.
/// Must be overridden in a [ProviderScope] above the game screen.

@ProviderFor(matchConfig)
final matchConfigProvider = MatchConfigProvider._();

/// Settings of the current match.
/// Must be overridden in a [ProviderScope] above the game screen.

final class MatchConfigProvider extends $FunctionalProvider<MatchConfig, MatchConfig, MatchConfig>
    with $Provider<MatchConfig> {
  /// Settings of the current match.
  /// Must be overridden in a [ProviderScope] above the game screen.
  MatchConfigProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'matchConfigProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[],
        $allTransitiveDependencies: <ProviderOrFamily>[],
      );

  @override
  String debugGetCreateSourceHash() => _$matchConfigHash();

  @$internal
  @override
  $ProviderElement<MatchConfig> $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  MatchConfig create(Ref ref) {
    return matchConfig(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MatchConfig value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MatchConfig>(value),
    );
  }
}

String _$matchConfigHash() => r'c188dd2bf0524cde1ac2f0ada4a7918a80619c5e';
