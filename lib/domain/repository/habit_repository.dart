import 'package:hackathon_lviv/domain/models/habit.dart';
import 'package:hackathon_lviv/util/paginated_list.dart';

abstract class HabitRepository {
  Future<Habit> createHabit(Habit habit);

  Future<Habit> updateHabit(Habit habit);

  Future<PaginatedList<ShortHabit>> getHabits({
    Object? cursor,
    int limit = 10,
    required bool usefulHabits,
  });

  Future<Habit> getHabit(String id);
}
