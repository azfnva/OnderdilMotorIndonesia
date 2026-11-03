Feature: Login
  Sebagai pengguna,
  saya ingin bisa masuk ke akun saya,
  supaya saya bisa berbelanja sparepart.

  Background:
    Given supabase is initialized for tests

  Scenario: Halaman login menampilkan brand dan tombol masuk
    Given the login screen is displayed
    Then I see {'Onderdil Motor Indonesia'} text
    And I see {'Masuk'} text
    And I see {'Masuk ke Akun'} text

  Scenario: Submit kosong menampilkan pesan validasi
    Given the login screen is displayed
    When I tap the login button
    Then I see {'Email atau username wajib diisi'} text
    And I see {'Password minimal 6 karakter'} text
