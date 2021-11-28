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

  Future<PaginatedList<ShortEvent>> eventsByAuthor({
    required String id,
    Object? cursor,
    int limit = 15,
  });

  Future<Event?> eventById(String id);

  Future<List<String>> eventMembers(String id);

  Future<bool> addParticipance(
    String id,
    String userId,
  );

  Future<bool> removeParticipance(
    String id,
    String userId,
  );

  Future<Event> createEvent(Event event);

  Future<Event> updateEvent(Event event);
}
