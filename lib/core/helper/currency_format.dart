import 'package:intl/intl.dart';

// ex: 1500 -> 1,500
String formatPrice(num price) {
  final formatter = NumberFormat('#,###');
  return formatter.format(price);
}

// ex: 1500 -> 1,500.00
String formatPriceWithDecimal(num price) {
  final formatter = NumberFormat('#,##0.00');
  return formatter.format(price);
}

// ex: 1500.00 -> $1,500.00
String formatCurrency(num price) {
  final formatter = NumberFormat.currency(symbol: '\$', decimalDigits: 2);
  return formatter.format(price);
}
