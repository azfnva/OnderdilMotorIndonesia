import 'package:flutter_test/flutter_test.dart';

/// Usage: When the splash timer elapses
Future<void> theSplashTimerElapses(WidgetTester tester) async {
  // SplashScreen menavigasi ke halaman berikutnya setelah 2 detik
  // (lihat lib/splash_screen.dart).
  await tester.pump(const Duration(seconds: 2));
  await tester.pumpAndSettle();
}
