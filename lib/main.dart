import 'package:intl/intl.dart';
import 'models/models.dart';

void main() {
  final rupiah = NumberFormat.currency(
      locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
  final nasi =
  ProdukMakanan.restok('MKN001', 'Nasi Goreng', 15000, 10);
  print('${nasi.nama}: ${rupiah.format(nasi.harga)}'); // ?
  print(rupiah.format(1250000));                      // ?
}
