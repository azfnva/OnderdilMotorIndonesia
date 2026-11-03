// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';

import './../step/supabase_is_initialized_for_tests.dart';
import './../step/the_empty_cart_screen_is_displayed.dart';
import '../step/i_see_text.dart';

void main() {
  group('''Keranjang (cart)''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await supabaseIsInitializedForTests(tester);
    }

    testWidgets('''Keranjang kosong menampilkan empty state''', (tester) async {
      await bddSetUp(tester);
      await theEmptyCartScreenIsDisplayed(tester);
      await iSeeText(tester, 'Keranjang masih kosong');
      await iSeeText(tester, 'Temukan sparepart yang cocok untuk motor Anda.');
      await iSeeText(tester, 'Lihat Katalog');
    });
  });
}
