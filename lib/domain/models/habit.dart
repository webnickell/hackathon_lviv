enum HabitType {
  useful,
  useless,
}

enum DesignType {
  first,
  second,
  third,
}

class Habit {
  final String id;
  final HabitType type;
  final DesignType designType;

  Habit({
    required this.id,
    required this.type,
    required this.designType,
  });
}
