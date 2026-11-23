abstract class Produk {
  final String kode;
  String nama;
  String kategori;
  double _harga; // private: tidak bisa diakses langsung dari luar file
  int _stok; // private
  bool tersedia;

  Produk(this.kode, this.nama, this.kategori, this._harga, this._stok)
      : tersedia = _stok > 0;

  Produk.baru(String kode, String nama, String kategori, double harga)
      : this(kode, nama, kategori, harga, 0);

  Produk.restok(
      String kode,
      String nama,
      String kategori,
      double harga,
      int stokAwal,
      ) : this(kode, nama, kategori, harga, stokAwal);

  // Getter: cara membaca harga dari luar class
  double get harga => _harga;

  // Setter: cara mengubah harga dari luar class sekaligus memvalidasi nilai
  set harga(double nilai) {
    if (nilai < 0) throw ArgumentError('Harga tidak boleh negatif');
    _harga = nilai;
  }

  // Getter: cara membaca stok dari luar class
  int get stok => _stok;

  // Method dari Pertemuan 3 tetap ada di sini:
  String tampilkanInfo(String prefix) =>
      '$prefix$nama - Rp${harga.toStringAsFixed(0)}';

  void tambahStok(int jumlah, [String? catatan]) {
    _stok += jumlah;
    tersedia = _stok > 0;
    if (catatan != null) print('Catatan restok: $catatan');
  }

  void aturDiskon({required double persen, String? alasan}) {
    final potongan = _harga * persen / 100;
    _harga -= potongan;
    print('Diskon $persen% diterapkan${alasan != null ? ' ($alasan)' : ''}');
  }

  String cetakStruk({bool includeDiskon = false}) {
    final buffer = StringBuffer()
      ..writeln('$nama ($kategori)')
      ..writeln('Harga: Rp${harga.toStringAsFixed(0)}')
      ..writeln('Stok tersisa: $_stok');
    return buffer.toString();
  }

  double hitungPajak();

}