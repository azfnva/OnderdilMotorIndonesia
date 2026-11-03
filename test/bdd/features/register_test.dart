// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';

import './../step/supabase_is_initialized_for_tests.dart';
import './../step/the_register_tab_is_displayed.dart';
import './../step/i_see_text.dart';
import '../step/i_enter_into_input_field.dart';
import './../step/i_tap_the_register_button.dart';

void main() {
  group('''Registrasi akun''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await supabaseIsInitializedForTests(tester);
    }

    testWidgets('''Tab Daftar menampilkan field registrasi''', (tester) async {
      await bddSetUp(tester);
      await theRegisterTabIsDisplayed(tester);
      await iSeeText(tester, 'Nama lengkap / Username');
      await iSeeText(tester, 'Ulangi Password');
      await iSeeText(tester, 'Buat Akun');
    });
    testWidgets('''Username kurang dari 3 karakter ditolak''', (tester) async {
      await bddSetUp(tester);
      await theRegisterTabIsDisplayed(tester);
      await iEnterIntoInputField(tester, 'ab', 0);
      await iEnterIntoInputField(tester, 'user@example.com', 1);
      await iEnterIntoInputField(tester, 'secret123', 2);
      await iEnterIntoInputField(tester, 'secret123', 3);
      await iTapTheRegisterButton(tester);
      await iSeeText(tester, 'Username minimal 3 karakter');
    });
    testWidgets('''Password tidak sama ditolak''', (tester) async {
      await bddSetUp(tester);
      await theRegisterTabIsDisplayed(tester);
      await iEnterIntoInputField(tester, 'andi_pratama', 0);
      await iEnterIntoInputField(tester, 'user@example.com', 1);
      await iEnterIntoInputField(tester, 'secret123', 2);
      await iEnterIntoInputField(tester, 'secret456', 3);
      await iTapTheRegisterButton(tester);
      await iSeeText(tester, 'Password tidak sama');
    });
    testWidgets('''Email tanpa @ ditolak''', (tester) async {
      await bddSetUp(tester);
      await theRegisterTabIsDisplayed(tester);
      await iEnterIntoInputField(tester, 'andi_pratama', 0);
      await iEnterIntoInputField(tester, 'bukan-email', 1);
      await iEnterIntoInputField(tester, 'secret123', 2);
      await iEnterIntoInputField(tester, 'secret123', 3);
      await iTapTheRegisterButton(tester);
      await iSeeText(tester, 'Format email tidak valid');
    });
  });
}
