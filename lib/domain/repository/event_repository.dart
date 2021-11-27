import 'package:hackathon_lviv/domain/models/coords.dart';
import 'package:hackathon_lviv/domain/models/event.dart';
import 'package:hackathon_lviv/domain/models/short_event.dart';
import 'package:hackathon_lviv/util/paginated_list.dart';

abstract class EventRepository {
  Future<PaginatedList<ShortEvent>> eventsByLocation({
    required Coords coords,
    Object? cursor,
    int limit = 15,
  });

  Future<Event> createEvent(Event event);

  Future<Event> updateEvent(Event event);
}
