import 'package:tic_tac_toe/domain/models/game_state.dart';

/// Plays [moves] in order from an empty board, cross first.
GameState playAll(List<int> moves) => moves.fold(GameState.initial, (state, index) => state.play(index));
