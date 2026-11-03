import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: When I tap the register button
Future<void> iTapTheRegisterButton(WidgetTester tester) async {
  final button = find.widgetWithText(ElevatedButton, 'Buat Akun');
  await tester.ensureVisible(button);
  await tester.tap(button);
  await tester.pumpAndSettle();
}
