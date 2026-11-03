import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Usage: Given supabase is initialized for tests
///
/// Supabase diinisialisasi dengan URL & key dummy (tidak ada backend yang
/// berjalan), sehingga `Supabase.instance.client` aman diakses. Semua
/// panggilan jaringan akan gagal cepat dan ditangkap oleh handler error
/// aplikasi — test ini fokus pada perilaku UI, bukan jaringan.
Future<void> supabaseIsInitializedForTests(WidgetTester tester) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  try {
    await Supabase.initialize(
      url: 'http://localhost:54321',
      publishableKey: 'bdd-test-anon-key',
      // Nonaktifkan timer refresh token otomatis supaya tidak ada
      // Timer yang tersisa setelah widget tree di-dispose (flutter_test
      // memverifikasi tidak ada timer pending di akhir test).
      authOptions: const FlutterAuthClientOptions(
        autoRefreshToken: false,
        detectSessionInUri: false,
      ),
    );
  } catch (_) {
    // Sudah diinisialisasi sebelumnya di dalam file test yang sama.
  }
}
