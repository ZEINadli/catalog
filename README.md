# Catalog

Aplikasi Flutter sederhana untuk katalog, dirancang dengan **clean architecture**.

## 📱 Alur Aplikasi

1. **Titik Awal (Entry Point)**
   - `lib/main.dart` adalah file pertama yang dijalankan saat aplikasi dibuka.
   - Di sini kita setup dependency injection (biasanya pakai `GetIt`) lewat `injection.dart`.
   - `MaterialApp` atau `CupertinoApp` diinisialisasi dengan tema dan rute.

2. **Routing & Navigasi**
   - Semua rute ditaruh di `lib/core/routes/` (misalnya `app_routes.dart`).
   - Navigasi memakai nama rute supaya kode UI nggak ketergantungan langsung ke implementasinya.

3. **Modul Fitur**
   - Setiap fitur (misalnya `cart`) dipisah di folder `lib/features/cart/`.
   - Tiap fitur punya tiga lapisan untuk mengikuti prinsip clean architecture:
     - **Presentation**: Kode widget, layar, dan manajemen state (Bloc, Provider, dsb.).
     - **Domain**: Logika bisnis dan definisi entitas.
     - **Data**: Repository, data source (remote/local), model.
   - UI berinteraksi dengan Bloc/Observer, lalu memanggil use case di domain.
   - Use case memanggil interface repository yang ada di domain.
   - Implementasi repository di layer data ambil data dari sumber (API, db lokal, dll).

4. **Dependency Injection**
   - `injection.dart` bertugas mendaftarkan semua dependensi.
   - Dengan cara ini, kita bisa dengan mudah mengganti implementasi saat testing.

5. **State & Tema**
   - Konfigurasi tema dan style ada di `lib/core/theme/`.
   - Konstanta global (string, key, dsb.) ada di `lib/core/constants/`.

6. **Contoh Alur Data**
   - Misal pengguna klik tombol "TAMBAH".
   - Event dikirim ke Bloc, Bloc memanggil `addItem`.
   - Use case memanggil interface `CartRepository`.
   - Implementasi repository menyimpan data ke storage lokal.
   - Bloc mengeluarkan state baru, dan UI ter-update.

---

## 📁 Struktur Folder (Clean Architecture)

```
lib/
├─ core/                    # Utilitas umum, konstanta, tema, rute
│  ├─ constants/            # Konstanta aplikasi
│  ├─ routes/               # Definisi rute
│  └─ theme/                # Tema dan gaya
├─ features/
│  ├─ cart/                 # Contoh fitur
│  │  ├─ data/              # Lapisan data (model, repo, datasource)
│  │  ├─ domain/            # Lapisan domain (entitas, repo interface)
│  │  └─ presentation/      # Lapisan presentasi (widget, bloc, layar)
├─ injection.dart           # Konfigurasi dependency injection
└─ main.dart                # Titik awal aplikasi
```

---

## 🛠️ Menjalankan Aplikasi

```bash
git clone https://github.com/ZEINadli/catalog.git
cd catalog
flutter pub get
flutter run
```

---

## Hasil

![m](https://github.com/user-attachments/assets/0b297aba-634d-483e-bc80-1a12789dcf33)
![c](https://github.com/user-attachments/assets/80f26866-4b00-46e6-a9b0-2ebaf57d63ec)

