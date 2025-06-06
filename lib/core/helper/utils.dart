import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

extension StringValidation on String? {
  bool isNullOrEmpty() {
    return this == null || this?.isEmpty == true;
  }
}

class Formatter {
  Formatter._();

  static String currencyFormat(num currency) {
    final formatter = NumberFormat("#,##0.##", "en_US");
    return formatter.format(currency);
  }
}

class Validator {
  Validator._();
}

extension ArrayUtils<T> on List<T> {
  void updateWhere(bool Function(T) condition, T newItem) {
    final index = indexWhere(condition);
    if (index != -1) {
      this[index] = newItem;
    }
  }
}

extension NavigationUtils on NavigatorState {
  void popToRoot() {
    popUntil((route) => route.isFirst);
  }
}

extension TruncateDoubleExtension on double {
  String truncateToString({int fractionDigits = 2}) {
    final stringValue = toString();
    final parts = stringValue.split('.');
    if (parts.length == 1 || fractionDigits == 0) return parts[0];

    final decimalPart = parts[1]
        .padRight(fractionDigits, '0')
        .substring(0, fractionDigits);
    return '${parts[0]}.$decimalPart';
  }
}

String buildNightsAndDateRange(String start, String end) {
  try {
    final format = DateFormat('dd-MM-yyyy');
    final startDate = format.parseStrict(start);
    final endDate = format.parseStrict(end);

    final nights = endDate.difference(startDate).inDays;

    final startMonthDay = DateFormat('MMM d').format(startDate);
    final endMonthDay = DateFormat('MMM d').format(endDate);
    final year = DateFormat('yyyy').format(endDate);

    return '$nights ${"nights".tr} ($startMonthDay - $endMonthDay, $year)';
  } catch (e) {
    print('Date parsing error: $e');
    return '';
  }
}

