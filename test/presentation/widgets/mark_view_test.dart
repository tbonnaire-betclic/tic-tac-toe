import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/domain/models/mark.dart';
import 'package:tic_tac_toe/presentation/widgets/mark_view.dart';

void main() {
  Widget host(Mark? mark) => Directionality(
    textDirection: TextDirection.ltr,
    child: MarkView(mark: mark),
  );

  double progress(WidgetTester tester) {
    final paint = tester.widget<CustomPaint>(
      find.descendant(
        of: find.byType(MarkView),
        matching: find.byType(CustomPaint),
      ),
    );
    return (paint.painter! as MarkPainter).progress.value;
  }

  testWidgets('a mark present on first build is fully drawn', (tester) async {
    await tester.pumpWidget(host(Mark.cross));
    expect(progress(tester), 1);
  });

  testWidgets('placing a mark animates its stroke', (tester) async {
    await tester.pumpWidget(host(null));
    await tester.pumpWidget(host(Mark.circle));
    expect(progress(tester), 0);

    await tester.pump(const Duration(milliseconds: 150));
    expect(progress(tester), inExclusiveRange(0, 1));

    await tester.pumpAndSettle();
    expect(progress(tester), 1);
  });

  testWidgets('clearing the mark paints nothing', (tester) async {
    await tester.pumpWidget(host(Mark.cross));
    await tester.pumpWidget(host(null));
    expect(find.byType(CustomPaint), findsNothing);
  });
}
