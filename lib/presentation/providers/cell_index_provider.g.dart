// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cell_index_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Index of the cell in the current subtree.
/// Must be overridden in a [ProviderScope] above each [GameGridCell].

@ProviderFor(cellIndex)
final cellIndexProvider = CellIndexProvider._();

/// Index of the cell in the current subtree.
/// Must be overridden in a [ProviderScope] above each [GameGridCell].

final class CellIndexProvider extends $FunctionalProvider<int, int, int> with $Provider<int> {
  /// Index of the cell in the current subtree.
  /// Must be overridden in a [ProviderScope] above each [GameGridCell].
  CellIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cellIndexProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[],
        $allTransitiveDependencies: <ProviderOrFamily>[],
      );

  @override
  String debugGetCreateSourceHash() => _$cellIndexHash();

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    return cellIndex(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$cellIndexHash() => r'2cd13f7b8e46b9a0b8d64b17480b372110dc07b9';
