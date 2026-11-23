# 📱 Aplikasi Kasir Flutter (Kasir App)

Aplikasi Point of Sale (POS) / Kasir berbasis Flutter yang dibangun dengan menerapkan konsep Pemrograman Berorientasi Objek (OOP) secara mendalam, seperti *Inheritance*, *Abstraction*, *Polymorphism*, dan *Mixin*.

---

## 🚀 Fitur Utama

- **Manajemen Produk Berbasis OOP**: Mendukung berbagai jenis produk (Makanan, Minuman, Produk Biasa) menggunakan konsep pewarisan (*inheritance*).
- **Abstraksi & Interface**: Menggunakan abstract class (`Produk`, `BisaDicetak`) dan Interface untuk standardisasi perilaku objek.
- **Mixin Diskon**: Fitur diskon modular yang dapat disematkan pada produk menggunakan konsep *Mixin* (`DiskonMixin`).
- **Sistem Keranjang Belanja (`Keranjang`)**: Menambah produk, menghitung subtotal, dan melakukan *checkout* transaksi.
- **Format Mata Uang Rupiah**: Integrasi dengan package [intl](https://pub.dev/packages/intl) untuk pemformatan mata uang Rupiah (`IDR`).
- **Penyimpanan Lokal**: Mendukung database SQLite (`sqflite`) untuk penyimpanan data transaksi dan produk.

---

## 📂 Struktur Project

```text
lib/
│
├── main.dart                 # Titik masuk aplikasi (Entry point)
├── models/
│   ├── bisa_dicetak.dart     # Interface untuk objek yang bisa dicetak struknya
│   ├── diskon_mixin.dart     # Mixin untuk pengelolaan diskon produk
│   ├── item_transaksi.dart   # Model item dalam transaksi
│   ├── kasir.dart            # Model layanan kasir
│   ├── keranjang.dart        # Model keranjang belanja
│   ├── models.dart           # File ekspor utama untuk semua model
│   ├── produk.dart           # Abstract class Produk utama
│   ├── produk_biasa.dart     # Subclass Produk Biasa
│   ├── produk_makanan.dart   # Subclass Produk Makanan
│   ├── produk_minuman.dart   # Subclass Produk Minuman
│   └── transaksi.dart        # Model transaksi
├── screens/                  # Halaman antarmuka pengguna (UI)
├── services/                 # Layanan database dan API lokal
└── widgets/                  # Komponen widget reusable
```

---

## 🛠️ Teknologi & Dependencies

- **Flutter** (Dart SDK `^3.13.4`)
- **intl** (`^0.19.0`) - Pemformatan angka & mata uang (`id_ID`)
- **sqflite** (`^2.4.1`) - Database SQLite lokal
- **path** (`^1.9.0`) - Utilitas manipulasi path file

---

## ⚙️ Cara Menjalankan Project

1. **Clone repository ini**:
   ```bash
   git clone https://github.com/username/nama-repository.git
   cd kasir
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Jalankan aplikasi**:
   ```bash
   flutter run
   ```

---

## 👨‍💻 Kontribusi & Lisensi
Project ini dikembangkan sebagai bagian dari pembelajaran Pemrograman Mobile dan Flutter berbasis OOP. Silakan gunakan dan kembangkan sesuai kebutuhan!
