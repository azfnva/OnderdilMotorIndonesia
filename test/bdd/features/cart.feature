Feature: Keranjang (cart)
  Sebagai pengguna,
  saya ingin melihat keranjang belanja saya,
  supaya saya tahu barang apa saja yang akan saya checkout.

  Background:
    Given supabase is initialized for tests

  Scenario: Keranjang kosong menampilkan empty state
    Given the empty cart screen is displayed
    Then I see {'Keranjang masih kosong'} text
    And I see {'Temukan sparepart yang cocok untuk motor Anda.'} text
    And I see {'Lihat Katalog'} text
