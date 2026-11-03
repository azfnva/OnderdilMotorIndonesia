import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oem_sparepart_catalog/auth_pages.dart';

/// Usage: Given the login screen is displayed
Future<void> theLoginScreenIsDisplayed(WidgetTester tester) async {
  await tester.pumpWidget(
    const MaterialApp(home: LoginPage()),
  );
  await tester.pumpAndSettle();
}
