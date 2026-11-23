import 'keranjang.dart';
import 'transaksi.dart';
class Kasir {
  final String nama;
  Kasir(this.nama);
// Keranjang hanya "dipinjam" lewat parameter, tidak disimpan sebagai field
  Transaksi layani(Keranjang keranjang) => keranjang.checkout();
}