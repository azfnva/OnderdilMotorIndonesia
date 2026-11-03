Feature: Splash screen
  Sebagai pengguna yang membuka aplikasi,
  saya ingin melihat splash screen sejenak,
  supaya saya tahu aplikasi sedang memuat.

  Scenario: Splash tampil lalu pindah ke halaman berikutnya
    Given the splash screen is displayed
    Then I see {'OEM Parts Catalog'} text
    When the splash timer elapses
    Then I see {'Target Halaman'} text
