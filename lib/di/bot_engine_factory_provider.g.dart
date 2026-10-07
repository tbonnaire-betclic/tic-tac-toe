// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_engine_factory_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Composition root for bots: the only place that knows the engine classes.

@ProviderFor(botEngineFactory)
final botEngineFactoryProvider = BotEngineFactoryProvider._();

/// Composition root for bots: the only place that knows the engine classes.

final class BotEngineFactoryProvider extends $FunctionalProvider<BotEngineFactory, BotEngineFactory, BotEngineFactory>
    with $Provider<BotEngineFactory> {
  /// Composition root for bots: the only place that knows the engine classes.
  BotEngineFactoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'botEngineFactoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$botEngineFactoryHash();

  @$internal
  @override
  $ProviderElement<BotEngineFactory> $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  BotEngineFactory create(Ref ref) {
    return botEngineFactory(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BotEngineFactory value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BotEngineFactory>(value),
    );
  }
}

String _$botEngineFactoryHash() => r'dc24bf773c16c33f2cfdb5a40e8793009c89e394';
