import 'package:intl/intl.dart';

extension DateTimeHelpers on DateTime {
  DateTime get firstDayOfMonth => DateTime(year, month, 1);
  DateTime get firstDayOfWeek => add(Duration(days: 1 - weekday));
  DateTime get lastDayOfMonth => DateTime(year, month + 1, 0);
  DateTime get lastDayOfWeek => add(Duration(days: 7 - weekday));

  static final DateFormat _monthFormatter = DateFormat('MMMM');
  String get formatTextMonthOnly => _monthFormatter.format(this);
}
