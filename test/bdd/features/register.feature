Feature: Registrasi akun
  Sebagai pengguna baru,
  saya ingin membuat akun,
  supaya saya bisa belanja sparepart secara personal.

  Background:
    Given supabase is initialized for tests

  Scenario: Tab Daftar menampilkan field registrasi
    Given the register tab is displayed
    Then I see {'Nama lengkap / Username'} text
    And I see {'Ulangi Password'} text
    And I see {'Buat Akun'} text

  Scenario: Username kurang dari 3 karakter ditolak
    Given the register tab is displayed
    When I enter {'ab'} into {0} input field
    And I enter {'user@example.com'} into {1} input field
    And I enter {'secret123'} into {2} input field
    And I enter {'secret123'} into {3} input field
    And I tap the register button
    Then I see {'Username minimal 3 karakter'} text

  Scenario: Password tidak sama ditolak
    Given the register tab is displayed
    When I enter {'andi_pratama'} into {0} input field
    And I enter {'user@example.com'} into {1} input field
    And I enter {'secret123'} into {2} input field
    And I enter {'secret456'} into {3} input field
    And I tap the register button
    Then I see {'Password tidak sama'} text

  Scenario: Email tanpa @ ditolak
    Given the register tab is displayed
    When I enter {'andi_pratama'} into {0} input field
    And I enter {'bukan-email'} into {1} input field
    And I enter {'secret123'} into {2} input field
    And I enter {'secret123'} into {3} input field
    And I tap the register button
    Then I see {'Format email tidak valid'} text
