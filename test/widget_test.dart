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

  testWidgets('Center include page title', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: IncludedPage()));
    tester.getCenter(
      find.text(inlcudedInThisTemplate),
    );
  });
}
