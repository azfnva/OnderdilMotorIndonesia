import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oem_sparepart_catalog/auth_pages.dart';

/// Usage: Given the register tab is displayed
Future<void> theRegisterTabIsDisplayed(WidgetTester tester) async {
  await tester.pumpWidget(
    const MaterialApp(home: LoginPage(initialTab: AuthTab.daftar)),
  );
  await tester.pumpAndSettle();
}
