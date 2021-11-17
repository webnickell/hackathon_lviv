extension DateTimeFormatters on DateTime {
  String formatDateOnly() => '$day.$_month';

  String get _month => month >= 10 ? '$month' : '0$month';
}
