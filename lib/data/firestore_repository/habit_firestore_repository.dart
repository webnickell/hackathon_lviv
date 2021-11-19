import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hackathon_lviv/data/models/habit.dart';
import 'package:hackathon_lviv/domain/models/habit.dart';
import 'package:hackathon_lviv/domain/models/monthly_track.dart';
import 'package:hackathon_lviv/domain/repository/habit_repository.dart';
import 'package:hackathon_lviv/util/paginated_list.dart';
import 'package:hackathon_lviv/util/tuples.dart';

class HabitFirestoreRepository implements HabitRepository {
  HabitFirestoreRepository({required this.firestore, required this.authId});

  final FirebaseFirestore firestore;
  final String authId;
  late CollectionReference<Map<String, dynamic>> habits =
      firestore.collection('users').doc(authId).collection('habits');

  @override
  Future<Habit> createHabit(Habit habit) async {
    final req = HabitResponse.fromModel(habit);
    final ref = await habits.add(req.toJson());
    final res = await ref.get();
    return HabitResponse.fromJson(res.data() as Map<String, Object?>)
        .toModel(res.id);
  }

  @override
  Future<Habit> getHabit(String id) => habits
      .doc(id)
      .get()
      .then((res) => HabitResponse.fromJson(res.data() as Map<String, Object?>))
      .then((value) => value.toModel());

  @override
  Future<PaginatedList<ShortHabit>> getHabits({
    Object? cursor,
    int limit = 10,
    required bool usefulHabits,
  }) async {
    final query = (cursor == null
            ? habits
            : habits.startAfterDocument(cursor as DocumentSnapshot<Object?>))
        .where(
          'type',
          isEqualTo:
              usefulHabits ? HabitType.useful.index : HabitType.useless.index,
        )
        .limit(limit);
    final snapshot = await query.get();

    final list = snapshot.docs
        .map((e) => Pair(HabitResponse.fromJson(e.data()), e.id))
        .map((e) => e.first.toShortModel(e.second))
        .toList();

    snapshot.size;

    return PaginatedList(
      data: list,
      loadedAllItems: true,
      cursor: snapshot.docs.last,
    );
  }
}
