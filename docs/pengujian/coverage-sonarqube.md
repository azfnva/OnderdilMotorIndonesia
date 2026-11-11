# Coverage Integration dengan SonarQube/SonarCloud

## Konfigurasi

Coverage dihasilkan oleh GitHub Actions melalui workflow:
`.github/workflows/sonar.yml`

Langkah CI yang dijalankan:
1. `flutter test --coverage` → menghasilkan `coverage/lcov.info`
2. SonarScanner membaca laporan melalui `sonar-project.properties`:
   ```properties
   sonar.dart.coverageReportPath=coverage/lcov.info
   ```

## Cara Melihat Hasil di SonarCloud

1. Push ke branch `main` atau buat Pull Request di:
   `https://github.com/azfnva/OnderdilMotorIndonesia`
2. Buka tab **Actions** → workflow **"Static Code Analysis (SonarQube / SonarCloud)"**
3. Tunggu selesai (~2–3 menit)
4. Buka dashboard SonarCloud:
   `https://sonarcloud.io/project/summary?id=azfnva_OnderdilMotorIndonesia`
5. Lihat kartu **Coverage** — persentase kode yang teruji

## Catatan

- Folder `coverage/` adalah build artifact dan **tidak di-commit** (sudah ada di `.gitignore`).
- Hasil coverage di-generate ulang di setiap run workflow GitHub Actions (runner Linux).
- Reliability, Maintainability, Security sudah tertera dengan grade **A**.
- Coverage (≥80%) adalah kriteria opsional untuk tugas ini.
