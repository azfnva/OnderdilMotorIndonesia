// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';

import './../step/supabase_is_initialized_for_tests.dart';
import './../step/the_login_screen_is_displayed.dart';
import './../step/i_see_text.dart';
import './../step/i_tap_the_login_button.dart';

void main() {
  group('''Login''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await supabaseIsInitializedForTests(tester);
    }

    testWidgets('''Halaman login menampilkan brand dan tombol masuk''',
        (tester) async {
      await bddSetUp(tester);
      await theLoginScreenIsDisplayed(tester);
      await iSeeText(tester, 'Onderdil Motor Indonesia');
      await iSeeText(tester, 'Masuk');
      await iSeeText(tester, 'Masuk ke Akun');
    });
    testWidgets('''Submit kosong menampilkan pesan validasi''', (tester) async {
      await bddSetUp(tester);
      await theLoginScreenIsDisplayed(tester);
      await iTapTheLoginButton(tester);
      await iSeeText(tester, 'Email atau username wajib diisi');
      await iSeeText(tester, 'Password minimal 6 karakter');
    });
  });
}
