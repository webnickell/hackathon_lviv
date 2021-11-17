class Day {
  const Day({
    required this.date,
    required this.positiveHabit,
    required this.negativeHabit,
  });

  final DateTime date;
  final int positiveHabit;
  final int negativeHabit;

  bool get hasPositiveHabit => positiveHabit > 0;

  bool get hasNegativeHabit => negativeHabit > 0;

  bool get hasAnyHabit => positiveHabit > 0 || negativeHabit > 0;
}

class Week {
  const Week({required this.days});

  final List<Day> days;
}
