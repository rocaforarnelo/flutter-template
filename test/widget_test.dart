import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_template/main.dart';

void main() {
  testWidgets('Send custom event on next page test',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Welcome to F\'s Flutter Template'), findsOneWidget);
    await tester.tap(find.text('Continue'));
    await tester.pump();
    expect(find.text('Welcome to F\'s Flutter Template'), findsNothing);
    expect(find.text('Included in this template:'), findsOneWidget);
  });
}
