import 'package:intl/intl.dart';

const _defaultLocale = "pt_BR";
const _defaultDecimalDigits = 2;

abstract class Utils {
  static String convertToCurrency({
    required double amount,
    String locale = _defaultLocale,
    int decimalDigits = _defaultDecimalDigits
  }) {
    final formatter = NumberFormat.simpleCurrency(
      locale: locale,
      decimalDigits: decimalDigits
    );
    return formatter.format(amount);
  }
}