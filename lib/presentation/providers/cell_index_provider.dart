import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/presentation/widgets/game_grid.dart' show GameGridCell;

part 'cell_index_provider.g.dart';

/// Index of the cell in the current subtree.
/// Must be overridden in a [ProviderScope] above each [GameGridCell].
@Riverpod(dependencies: [])
int cellIndex(Ref ref) => throw UnimplementedError('cellIndexProvider must be overridden');
