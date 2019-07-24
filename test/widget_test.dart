// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_listview_collapsed_item_issue/main.dart';

void main() {
  // ignore: avoid_as
  final binding = TestWidgetsFlutterBinding.ensureInitialized()
      as TestWidgetsFlutterBinding;

  binding.window.devicePixelRatioTestValue = 1.0;
  binding.window.physicalSizeTestValue = Size(375, 500);

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    await tester.runAsync(() async {
      // await tester.dragFrom(
      //   tester.getCenter(find.byType(OutfitCardImage).first),
      //   const Offset(-200.0, 0),
      // );
      await tester.tap(find.byType(MyHomePage));

      await tester.pump();
    });

    await expectLater(
      find.byType(MyApp),
      matchesGoldenFile('after-tap-before-scroll.png'),
    );

    // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // // Tap the '+' icon and trigger a frame.
    // await tester.pump();

    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    await tester.runAsync(() async {
      await tester.dragFrom(
        tester.getCenter(find.byType(MyHomePage)),
        const Offset(0.0, -50),
      );
      // await tester.tap(find.byType(MyHomePage));

      // await tester.pump();
      await tester.pumpAndSettle();
    });

    await expectLater(
      find.byType(MyApp),
      matchesGoldenFile('scroll-before-tap.png'),
    );

    await tester.runAsync(() async {
      // await tester.dragFrom(
      //   tester.getCenter(find.byType(MyHomePage)),
      //   const Offset(50.0, 0),
      // );
      await tester.tap(find.byType(Text));

      await tester.pump();
    });

    await expectLater(
      find.byType(MyApp),
      matchesGoldenFile('tap-after-scroll.png'),
    );

    // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // // Tap the '+' icon and trigger a frame.
    // await tester.pump();

    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
