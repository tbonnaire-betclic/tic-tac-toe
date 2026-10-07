// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'human_mark_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The mark the human chose on the home screen.

@ProviderFor(HumanMark)
final humanMarkProvider = HumanMarkProvider._();

/// The mark the human chose on the home screen.
final class HumanMarkProvider extends $NotifierProvider<HumanMark, Mark> {
  /// The mark the human chose on the home screen.
  HumanMarkProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'humanMarkProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$humanMarkHash();

  @$internal
  @override
  HumanMark create() => HumanMark();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Mark value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Mark>(value),
    );
  }
}

String _$humanMarkHash() => r'58334240989f577e3689ce952aab8624b8a9ac57';

/// The mark the human chose on the home screen.

abstract class _$HumanMark extends $Notifier<Mark> {
  Mark build();

  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<Mark, Mark>;
    final element = ref.element as $ClassProviderElement<AnyNotifier<Mark, Mark>, Mark, Object?, Object?>;
    return element.handleCreate(ref, build);
  }
}