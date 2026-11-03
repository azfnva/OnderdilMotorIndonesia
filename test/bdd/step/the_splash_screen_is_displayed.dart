import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oem_sparepart_catalog/splash_screen.dart';

// Halaman tujuan dummy untuk menggantikan AuthGate (tidak terhubung ke
// Supabase) — yang diuji adalah perilaku SplashScreen: tampil lalu navigasi.
class _TargetHalaman extends StatelessWidget {
  const _TargetHalaman();

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Center(child: Text('Target Halaman')),
      );
}

/// Usage: Given the splash screen is displayed
Future<void> theSplashScreenIsDisplayed(WidgetTester tester) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: SplashScreen(next: _TargetHalaman()),
    ),
  );
}
