import 'dart:math';

import 'package:hackathon_lviv/domain/models/week.dart';
import 'package:hackathon_lviv/domain/repository/week_repository.dart';
import 'package:hackathon_lviv/util/tuples.dart';

class WeekFirestoreRepository extends IWeekRepository {
  final random = Random();
  @override
  Future<Pair<List<Week>, Object?>> getWeek({
    required DateTime from,
    int limit = 10,
  }) async {
    // TODO(webnickell) : replace with firestore collection
    return Pair(
      List.generate(
        limit,
        (_) => Week(
          days: Iterable.generate(7)
              .map((i) => DateTime.now().add(Duration(days: i)))
              .map((d) => Day(
                    date: d,
                    positiveHabit: random.nextInt(3),
                    negativeHabit: random.nextInt(3),
                  ))
              .toList(),
        ),
      ),
      null,
    );
  }
}
