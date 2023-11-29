import 'package:intl/date_symbol_data_local.dart';
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
  
  static String formatDateTime(DateTime dateTime) {
    initializeDateFormatting();

    DateFormat dateFormat = DateFormat.yMd("pt_BR").add_Hm();
    return dateFormat.format(dateTime);
  }
}