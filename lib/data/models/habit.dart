import 'package:hackathon_lviv/domain/models/habit.dart';
import 'package:hackathon_lviv/domain/repository/habit_repository.dart';
import 'package:json_annotation/json_annotation.dart';

part 'habit.g.dart';

@JsonSerializable()
class HabitResponse {
  final String? id;
  final String name;
  final String description;
  final HabitType type;
  final DesignType designType;

  const HabitResponse({
    required this.name,
    required this.description,
    this.id,
    required this.type,
    required this.designType,
  });

  factory HabitResponse.fromJson(Map<String, Object?> json) =>
      _$HabitResponseFromJson(json);

  factory HabitResponse.fromModel(Habit habit) => HabitResponse(
        name: habit.name,
        description: habit.description,
        id: habit.id,
        type: habit.type,
        designType: habit.designType,
      );

  Map<String, Object?> toJson() => _$HabitResponseToJson(this);

  Habit toModel([String? id]) => Habit(
        name: name,
        description: description,
        id: id ?? this.id,
        type: type,
        designType: designType,
      );

  ShortHabit toShortModel([String? id]) => ShortHabit(
        id: id ?? this.id!,
        name: name,
        type: type,
        progress: 0,
      );
}
