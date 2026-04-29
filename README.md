# X86-Assembly-
Proyek ini adalah implementasi bahasa pemrograman Assembly (x86) untuk mengonversi nilai satuan panjang dari Centimeter (cm) ke Inchi. Program ini dirancang untuk dijalankan pada simulator x86
## 📝 Deskripsi Program

Program ini melakukan perhitungan matematis sederhana untuk mengubah nilai centimeter yang tersimpan di memori menjadi inchi dengan mempertimbangkan satu digit di belakang desimal.

### Spesifikasi Teknis:
* **Assembler:** NASM (Netwide Assembler) syntax.
* **Environment:** x86 Simulator (Simul8086).
* **Rumus:** `1 cm ≈ 0.3937 inchi`.
* **Metode Perhitungan:** Untuk efisiensi tanpa floating point unit, program menggunakan perkalian integer `(cm * 3937) / 10000`.

## 🛠️ Penjelasan Kode

Program ini terbagi menjadi beberapa bagian utama:

1.  **Memory Data (`section .data`):** Mengalokasikan variabel untuk menyimpan nilai input (cm), hasil (inchi), serta pesan string dan karakter pendukung (titik, newline).
2.  **Register CPU:** Menggunakan register **EAX** untuk kalkulasi dan output, **EBX** sebagai pembagi/pengali, dan **EDX** untuk menampung sisa pembagian (modulo).
3.  **Proses Konversi:**
    * Nilai cm dikalikan 3937.
    * Hasilnya dibagi 10.000 untuk mendapatkan angka bulat.
    * Sisa pembagian diproses kembali (dikali 10 lalu dibagi 10.000) untuk mendapatkan satu angka di belakang koma.

## 📊 Flowchart Program

```mermaid
graph TD
    A([Start]) --> B[Print 'Centimeter: ']
    B --> C[Print Nilai cm]
    C --> D[Hitung Konversi: <br/>inchi = cm * 3937 / 10000]
    D --> E[Simpan Hasil Bulat & Sisa]
    E --> F[Print 'Inchi: ']
    F --> G[Print Nilai Inchi Bulat]
    G --> H[Print Titik Desimal '.']
    H --> I[Hitung & Print Digit Desimal Pertama]
    I --> J[Print Newline]
    J --> K([End])
⚠️ Kelemahan & Solusi
Kelemahan Saat Ini:
Hardcoded Input: Nilai centimeter masih ditentukan di dalam kode program (cm: dd 10), sehingga pengguna harus mengubah kode secara manual untuk mengganti angka.

Presisi Terbatas: Hanya menampilkan satu digit desimal.

Solusi Pengembangan:
Input Dinamis: Menggunakan INT untuk membaca input dari keyboard agar pengguna bisa memasukkan angka saat program berjalan.

Peningkatan Presisi: Memodifikasi bagian pembagian sisa (EDX) secara berulang untuk menampilkan lebih banyak angka di belakang koma (misal 2 atau 3 digit desimal).

🚀 Cara Menjalankan
Salin kode dari file konversi.asm di repositori ini.

Buka https://kobzol.github.io/davis/  

Tempelkan kode ke area editor.

Klik tombol Assemble.

Klik tombol Play atau Run untuk melihat hasil di bagian Console.

