// Renders the app icon sources with the game's own MarkPainter.
//
// Run with: flutter test tool/app_icon/generate_app_icon_test.dart
// Then:     dart run flutter_launcher_icons
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/animation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';
import 'package:tic_tac_toe/presentation/widgets/mark_view.dart';

const _size = 1024.0;
const _backgroundTop = Color(0xFF386A20);
const _backgroundBottom = Color(0xFF205107);
// Opaque, so crossing lines don't create brighter spots.
const _gridColor = Color(0xFF7FA66B);
const _crossColor = Color(0xFFB8F397);
const _circleColor = Color(0xFFF2B8B5);

/// Marks shown on the icon, by cell index.
const _markScale = 1.15;

const Map<int, Mark> _marks = {0: Mark.circle, 4: Mark.cross, 8: Mark.cross, 2: Mark.circle};

void main() {
  testWidgets('generate app icon sources', (tester) async {
    await tester.runAsync(() async {
      // Full-bleed icon for iOS, web and Windows: the platform applies its own mask.
      await _write('assets/icon/app_icon.png', withBackground: true, contentFraction: 0.72);
      // Android adaptive foreground: flutter_launcher_icons adds a 16% inset on each side,
      // so 0.8 here becomes ~0.55 of the layer, inside the 66% safe zone.
      await _write('assets/icon/app_icon_foreground.png', withBackground: false, contentFraction: 0.8);
      await _write('assets/icon/app_icon_background.png', withBackground: true, contentFraction: 0);
      // Android 13+ themed icons: the launcher tints this single-color layer.
      await _write(
        'assets/icon/app_icon_monochrome.png',
        withBackground: false,
        contentFraction: 0.8,
        monochrome: const Color(0xFFFFFFFF),
      );
    });
  });
}

Future<void> _write(
  String path, {
  required bool withBackground,
  required double contentFraction,
  Color? monochrome,
}) async {
  final recorder = ui.PictureRecorder();
  final canvas = Canvas(recorder);
  const bounds = Rect.fromLTWH(0, 0, _size, _size);

  if (withBackground) {
    canvas.drawRect(
      bounds,
      Paint()..shader = ui.Gradient.linear(bounds.topCenter, bounds.bottomCenter, [_backgroundTop, _backgroundBottom]),
    );
  }

  final content = Rect.fromCenter(
    center: bounds.center,
    width: _size * contentFraction,
    height: _size * contentFraction,
  );
  if (!content.isEmpty) _paintBoard(canvas, content, monochrome: monochrome);

  final image = await recorder.endRecording().toImage(_size.toInt(), _size.toInt());
  final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
  File(path)
    ..createSync(recursive: true)
    ..writeAsBytesSync(bytes!.buffer.asUint8List());
}

void _paintBoard(Canvas canvas, Rect content, {Color? monochrome}) {
  final cell = content.width / 3;
  final gridPaint = Paint()
    ..color = monochrome ?? _gridColor
    ..strokeWidth = content.width * 0.035
    ..strokeCap = StrokeCap.round;
  for (var i = 1; i < 3; i++) {
    final offset = cell * i;
    canvas
      ..drawLine(content.topLeft.translate(offset, 0), content.bottomLeft.translate(offset, 0), gridPaint)
      ..drawLine(content.topLeft.translate(0, offset), content.topRight.translate(0, offset), gridPaint);
  }

  for (final MapEntry(key: index, value: mark) in _marks.entries) {
    // Marks are drawn larger than in game so they stay legible at launcher sizes.
    final cellRect = Rect.fromCenter(
      center: Offset(content.left + cell * (index % 3 + 0.5), content.top + cell * (index ~/ 3 + 0.5)),
      width: cell * _markScale,
      height: cell * _markScale,
    );
    canvas
      ..save()
      ..translate(cellRect.left, cellRect.top);
    MarkPainter(
      mark: mark,
      color: monochrome ?? (mark == Mark.cross ? _crossColor : _circleColor),
      strokeFraction: 0.12,
      progress: const AlwaysStoppedAnimation(1),
    ).paint(canvas, cellRect.size);
    canvas.restore();
  }
}
