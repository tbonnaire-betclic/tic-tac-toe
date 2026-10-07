import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';

/// Design tokens for the game, independent of any design system.
@immutable
class GameThemeData {
  const GameThemeData({
    required this.background,
    required this.foreground,
    required this.cell,
    required this.winningCell,
    required this.cross,
    required this.circle,
    required this.button,
    required this.onButton,
    required this.markStrokeFraction,
    required this.markAnimationDuration,
    required this.statusStyle,
    required this.buttonStyle,
  });

  factory light() => GameThemeData._build(
    background: const Color(0xFFFDFDF5),
    foreground: const Color(0xFF1A1C18),
    cell: const Color(0xFFDFE4D7),
    winningCell: const Color(0xFFB8F397),
    cross: const Color(0xFF205107),
    circle: const Color(0xFF8C1D18),
    button: const Color(0xFF386A20),
    onButton: const Color(0xFFFFFFFF),
  );

  factory dark() => GameThemeData._build(
    background: const Color(0xFF1A1C18),
    foreground: const Color(0xFFE3E3DC),
    cell: const Color(0xFF43483E),
    winningCell: const Color(0xFF205107),
    cross: const Color(0xFF9DD67D),
    circle: const Color(0xFFF2B8B5),
    button: const Color(0xFF9DD67D),
    onButton: const Color(0xFF0B3900),
  );

  factory fromBrightness(Brightness brightness) => brightness == Brightness.dark ? .dark() : .light();

  factory _build({
    required Color background,
    required Color foreground,
    required Color cell,
    required Color winningCell,
    required Color cross,
    required Color circle,
    required Color button,
    required Color onButton,
  }) => GameThemeData(
    background: background,
    foreground: foreground,
    cell: cell,
    winningCell: winningCell,
    cross: cross,
    circle: circle,
    button: button,
    onButton: onButton,
    markStrokeFraction: 0.1,
    markAnimationDuration: const Duration(milliseconds: 300),
    statusStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: foreground,
    ),
    buttonStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: onButton,
    ),
  );

  final Color background;
  final Color foreground;
  final Color cell;
  final Color winningCell;
  final Color cross;
  final Color circle;
  final Color button;
  final Color onButton;

  /// Stroke width of a mark, as a fraction of the cell size.
  final double markStrokeFraction;

  /// How long it takes to draw a mark once it is placed.
  final Duration markAnimationDuration;
  final TextStyle statusStyle;
  final TextStyle buttonStyle;

  Color markColor(Mark mark) => switch (mark) {
    Mark.cross => cross,
    Mark.circle => circle,
  };
}

class GameTheme extends InheritedWidget {
  const GameTheme({required this.data, required super.child, super.key});

  final GameThemeData data;

  /// The closest [GameThemeData], or one matching the platform brightness
  /// when no [GameTheme] is above [context].
  static GameThemeData of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<GameTheme>()?.data ??
      .fromBrightness(MediaQuery.platformBrightnessOf(context));

  @override
  bool updateShouldNotify(GameTheme oldWidget) => data != oldWidget.data;
}