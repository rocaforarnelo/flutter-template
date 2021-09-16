import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Firebase Analytics', () {
    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      driver.close();
    });

    test('send custom event', () async {
      FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics();

      expect(
          await firebaseAnalytics
              .logEvent(name: 'integration test event')
              .then((value) {
            return "1";
          }),
          "1");
    });
  });
}
