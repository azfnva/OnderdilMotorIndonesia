import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: When I tap the login button
Future<void> iTapTheLoginButton(WidgetTester tester) async {
  final button = find.widgetWithText(ElevatedButton, 'Masuk ke Akun');
  await tester.ensureVisible(button);
  await tester.tap(button);
  await tester.pumpAndSettle();
}
