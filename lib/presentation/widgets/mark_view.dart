import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';
import 'package:tic_tac_toe/presentation/theme/game_theme.dart';

/// Paints [mark], animating its stroke when it is placed.
class MarkView extends StatefulWidget {
  const MarkView({required this.mark, super.key});

  final Mark? mark;

  @override
  State<MarkView> createState() => _MarkViewState();
}

class _MarkViewState extends State<MarkView> with SingleTickerProviderStateMixin {
  // A mark already present on first build is shown fully drawn.
  late final _controller = AnimationController(
    vsync: this,
    value: widget.mark == null ? 0 : 1,
  );
  late final _progress = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutCubic,
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller.duration = GameTheme.of(context).markAnimationDuration;
  }

  @override
  void didUpdateWidget(MarkView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.mark == oldWidget.mark) return;
    if (widget.mark == null) {
      _controller.value = 0;
    } else {
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _progress.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mark = widget.mark;
    if (mark == null) return const SizedBox.expand();

    final theme = GameTheme.of(context);
    return SizedBox.expand(
      child: CustomPaint(
        painter: MarkPainter(
          mark: mark,
          color: theme.markColor(mark),
          strokeFraction: theme.markStrokeFraction,
          progress: _progress,
        ),
      ),
    );
  }
}

class MarkPainter extends CustomPainter {
  MarkPainter({
    required this.mark,
    required this.color,
    required this.strokeFraction,
    required this.progress,
  }) : super(repaint: progress);

  final Mark mark;
  final Color color;
  final double strokeFraction;

  /// From 0 (nothing drawn) to 1 (fully drawn).
  final Animation<double> progress;

  @override
  void paint(Canvas canvas, Size size) {
    final t = progress.value;
    if (t <= 0) return;

    final side = size.shortestSide;
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = side * strokeFraction
      ..strokeCap = StrokeCap.round;

    // A ring covers less area than two diagonals, so the circle is drawn
    // slightly larger to look as heavy as the cross.
    final extent = side * (mark == Mark.circle ? 0.56 : 0.5);
    final rect = Rect.fromCenter(
      center: size.center(Offset.zero),
      width: extent,
      height: extent,
    );

    switch (mark) {
      case Mark.cross:
        _drawLine(canvas, rect.topLeft, rect.bottomRight, t * 2, paint);
        _drawLine(canvas, rect.topRight, rect.bottomLeft, t * 2 - 1, paint);
      case Mark.circle:
        canvas.drawArc(rect, -pi / 2, 2 * pi * t, false, paint);
    }
  }

  /// Draws the first [fraction] of the line from [from] to [to].
  void _drawLine(
    Canvas canvas,
    Offset from,
    Offset to,
    double fraction,
    Paint paint,
  ) {
    if (fraction <= 0) return;
    canvas.drawLine(from, Offset.lerp(from, to, min(fraction, 1))!, paint);
  }

  @override
  bool shouldRepaint(MarkPainter oldDelegate) =>
      oldDelegate.mark != mark ||
      oldDelegate.color != color ||
      oldDelegate.strokeFraction != strokeFraction ||
      oldDelegate.progress != progress;
}