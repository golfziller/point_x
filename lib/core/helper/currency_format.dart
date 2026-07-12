import 'package:intl/intl.dart';

String formatPrice(num price) {
  final formatter = NumberFormat('#,###');
  return formatter.format(price); // ตัวอย่าง: 1500 -> 1,500
}

// แบบที่ 2: ใส่ Comma และล็อกทศนิยม 2 ตำแหน่งเป๊ะๆ
String formatPriceWithDecimal(num price) {
  final formatter = NumberFormat('#,##0.00');
  return formatter.format(price); // ตัวอย่าง: 1500 -> 1,500.00
}

// แบบที่ 3: ใส่สกุลเงินดอลลาร์ $ นำหน้าอัตโนมัติ
String formatCurrency(num price) {
  final formatter = NumberFormat.currency(symbol: '\$', decimalDigits: 2);
  return formatter.format(price); // ตัวอย่าง: 1500 -> $1,500
}
