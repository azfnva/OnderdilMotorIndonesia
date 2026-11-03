import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: When I enter {'text'} into {1} input field
///
/// Implementasi custom: aplikasi ini memakai TextFormField sehingga
/// pencarian berdasarkan index TextFormField lebih tepat.
Future<void> iEnterIntoInputField(
  WidgetTester tester,
  String text,
  int index,
) async {
  final textField = find.byType(TextFormField).at(index);

  await tester.ensureVisible(textField);
  await tester.enterText(textField, text);
}
