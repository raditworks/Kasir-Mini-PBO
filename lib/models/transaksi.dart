import 'item_transaksi.dart';
import 'produk.dart';

class Transaksi {
  final String idTransaksi;
  final List<ItemTransaksi> _items = []; // private: hanya Transaksi yang boleh mengisi

  Transaksi(this.idTransaksi);

  // Satu-satunya cara menambah item: Transaksi sendiri yang membuat ItemTransaksi-nya.
  void tambahItem(Produk produk, int jumlah) {
    _items.add(ItemTransaksi(produk, jumlah));
  }

  List<ItemTransaksi> get items => List.unmodifiable(_items);
  double get totalHarga => _items.fold(0.0, (sum, item) => sum + item.subtotal);
}