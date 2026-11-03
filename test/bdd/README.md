# BDD Automation Testing (Gherkin / Cucumber-style)

Implementasi *Behaviour-Driven Development* untuk `oem_sparepart_catalog`
menggunakan [`bdd_widget_test`](https://pub.dev/packages/bdd_widget_test)
(parser Gherkin resmi `cucumber_gherkin`) + `flutter_test` widget testing.

## Struktur

```
test/bdd/
├── features/          # Skenario Gherkin (.feature) + file test hasil generate
│   ├── *.feature
│   └── *_test.dart    # GENERATED — jangan diedit manual
└── step/              # Implementasi step custom (Indonesia)
```

## Cara menjalankan

```bash
flutter test test/bdd
```

Regenerate `*_test.dart` setelah mengubah `.feature` atau menambah step:

```bash
dart run build_runner build
```

## Cakupan skenario (8 skenario, semua hijau)

| Feature | Skenario |
|---|---|
| `splash.feature` | Splash tampil → navigasi ke halaman berikutnya |
| `login.feature` | Brand & tombol tampil; submit kosong → validasi form |
| `register.feature` | Tab Daftar; username < 3 karakter ditolak; password tidak sama ditolak; email tanpa `@` ditolak |
| `cart.feature` | Keranjang kosong → empty state + CTA "Lihat Katalog" |

## Catatan penting

- **Offline, deterministik**: Supabase diinisialisasi dengan URL & key dummy
  (`supabase is initialized for tests`); tidak ada jaringan yang dipanggil
  (`flutter_test` mengembalikan HTTP 400 untuk semua request), dan
  `autoRefreshToken` dimatikan supaya tidak ada timer tersisa di akhir test.
- **Alur katalog / checkout / admin end-to-end** memerlukan backend nyata.
  Rencananya sudah terdokumentasi di `docs/pengujian/rencana-pengujian.md`
  bagian 8–9 (`integration_test` + `supabase start` + seed akun `@test.dev`),
  dan bisa dijadikan feature file BDD juga memakai
  `bdd_widget_test|integration_test/**` (lihat README `bdd_widget_test`).
- Menambahkan skenario baru: cukup tulis `.feature`, lalu `dart run build_runner build`,
  lalu implementasikan step yang digenerate di `step/`.
