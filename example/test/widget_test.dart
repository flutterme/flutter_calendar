// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';

void main() {
  test("Test DateTime", () {
    // bug 东2时区，本地时间 2023-10-29 加1天 不是2023-10-30
    DateTime d1 = DateTime.utc(2023, 10, 29);
    DateTime d2 = d1.add(Duration(hours: 2));
    DateTime d3 = d1.add(Duration(hours: 3));
    print("$d2 $d3");
    // DateTime d2 = d1.add(Duration(hours: 1));
    // var diff = dateTime.difference(d1);
    // var d29 = DateTime(2023,10,29,23,59,59);
    // print(d29.difference(d1));
  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
