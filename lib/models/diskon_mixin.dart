import 'produk_makanan.dart';

mixin BisaDiskon {
  double terapkanDiskon(double harga, double persenDiskon) =>
      harga - (harga * persenDiskon / 100);
}

// Class turunan ProdukMakanan yang juga menggunakan Mixin BisaDiskon
class ProdukPromo extends ProdukMakanan with BisaDiskon {
  double persenPromo;

  ProdukPromo(
      super.kode,
      super.nama,
      super.kategori,
      super.harga,
      super.stok, {
        required this.persenPromo,
      });

  double get hargaPromo => terapkanDiskon(harga, persenPromo);
}