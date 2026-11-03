// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';

import './../step/the_splash_screen_is_displayed.dart';
import './../step/i_see_text.dart';
import './../step/the_splash_timer_elapses.dart';

void main() {
  group('''Splash screen''', () {
    testWidgets('''Splash tampil lalu pindah ke halaman berikutnya''',
        (tester) async {
      await theSplashScreenIsDisplayed(tester);
      await iSeeText(tester, 'OEM Parts Catalog');
      await theSplashTimerElapses(tester);
      await iSeeText(tester, 'Target Halaman');
    });
  });
}
