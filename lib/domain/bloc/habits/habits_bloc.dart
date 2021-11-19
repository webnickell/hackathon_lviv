import 'package:hackathon_lviv/domain/bloc/pagination/pagination_bloc.dart';
import 'package:hackathon_lviv/domain/models/habit.dart';
import 'package:hackathon_lviv/domain/repository/habit_repository.dart';
import 'package:hackathon_lviv/util/paginated_list.dart';

class HabitsBloc extends PaginationBloc<ShortHabit> {
  HabitsBloc({required this.repository, required this.usefulHabits});

  final HabitRepository repository;
  final bool usefulHabits;

  @override
  Future<PaginatedList<ShortHabit>> loadPage([Object? cursor]) =>
      repository.getHabits(
        usefulHabits: usefulHabits,
        cursor: cursor,
      );
}
