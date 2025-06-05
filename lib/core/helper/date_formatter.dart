import 'package:get/get.dart';
import 'package:intl/intl.dart';

enum ECISDateFormatter {
  dMMMMY_hhmma('d MMMM y - hh:mm a'),
  dMMMMY('d MMMM y'),
  hmma('h:mm a');
  final String pattern;

  const ECISDateFormatter(this.pattern);

  String format(DateTime dateTime) {
    return DateFormat(pattern, Get.locale?.languageCode ?? "ar")
        .format(dateTime);
  }
}
