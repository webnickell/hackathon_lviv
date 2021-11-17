import 'package:hackathon_lviv/domain/models/week.dart';
import 'package:hackathon_lviv/util/tuples.dart';

abstract class IWeekRepository {
  Future<Pair<List<Week>, Object?>> getWeek({
    required DateTime from,
    int limit = 10,
  });
}
