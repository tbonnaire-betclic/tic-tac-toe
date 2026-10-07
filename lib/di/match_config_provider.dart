import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/domain/models/match_config.dart';

part 'match_config_provider.g.dart';

/// Settings of the current match.
/// Must be overridden in a [ProviderScope] above the game screen.
@Riverpod(dependencies: [])
MatchConfig matchConfig(Ref ref) => throw UnimplementedError('matchConfigProvider must be overridden');
