import 'package:json_annotation/json_annotation.dart';

enum HabitType {
  @JsonValue(0)
  useful,
  @JsonValue(1)
  useless,
}

enum DesignType {
  @JsonValue(0)
  first,
  @JsonValue(1)
  second,
  @JsonValue(2)
  third,
}

class Habit {
  final String? id;
  final String name;
  final String description;
  final HabitType type;
  final DesignType designType;

  const Habit({
    required this.name,
    required this.description,
    this.id,
    required this.type,
    required this.designType,
  });
}

class ShortHabit {
  const ShortHabit({
    required this.id,
    required this.name,
    required this.progress,
    required this.type,
  });

  final String id;
  final String name;
  final int progress;
  final HabitType type;
}
