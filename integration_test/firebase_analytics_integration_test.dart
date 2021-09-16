import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

Future<void> main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await Firebase.initializeApp();
  });

  group('Firebase Analytics', () {
    testWidgets('send custom event', (WidgetTester tester) async {
      FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics();

      expect(
          await firebaseAnalytics
              .logEvent(name: 'integration_test_event')
              .then((value) {
            return "1";
          }).catchError((Object error) {
            return "0";
          }),
          "1");
    });
  });
}
