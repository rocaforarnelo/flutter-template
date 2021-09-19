import 'package:flutter/material.dart';
import 'package:flutter_template/included_page.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_template/main.dart';

void main() {
  final String inlcudedInThisTemplate = 'Included in this template:';
  testWidgets('Send custom event on next page test',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Welcome to F\'s Flutter Template'), findsOneWidget);
    await tester.tap(find.text('Continue'));
    await tester.pump();
    expect(find.text(inlcudedInThisTemplate), findsOneWidget);
  });

  testWidgets('Center include page title test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: IncludedPage()));
    tester.getCenter(
      find.text(inlcudedInThisTemplate),
    );
  });

  testWidgets('To languages button on bottom right test',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: IncludedPage()));
    expect(find.byType(IconButton), findsOneWidget);
    expect(find.byIcon(Icons.language), findsOneWidget);
    await tester.tap(find.byIcon(Icons.language), warnIfMissed: true);
    await tester.pump(Duration(milliseconds: 300));
    await tester.pump(Duration(milliseconds: 300));
    expect(find.text('Languages'), findsOneWidget);
  });
}
