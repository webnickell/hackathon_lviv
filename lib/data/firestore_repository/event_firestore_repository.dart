import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hackathon_lviv/data/models/create_event.dart';
import 'package:hackathon_lviv/data/models/event.dart';
import 'package:hackathon_lviv/domain/models/event.dart';
import 'package:hackathon_lviv/domain/models/short_event.dart';
import 'package:hackathon_lviv/domain/models/coords.dart';
import 'package:hackathon_lviv/domain/repository/event_repository.dart';
import 'package:hackathon_lviv/util/paginated_list.dart';

class EventFirestoreRepository extends EventRepository {
  final FirebaseFirestore firestore;
  final String authId;
  late CollectionReference<EventResponse> events =
      firestore.collection('events').withConverter<EventResponse>(
            fromFirestore: (s, o) => EventResponse.fromDocument(s, o),
            toFirestore: (r, o) => r.toDocument(),
          );

  EventFirestoreRepository(this.firestore, this.authId);

  @override
  Future<Event> createEvent(Event event) async {
    events;
    final req = EventResponse.fromModel(event);
    final ref = await events.add(req);
    final res = await ref.get();
    return res.data()!.toModel();
  }

  @override
  Future<Event> updateEvent(Event habit) async {
    final req = EventResponse.fromModel(habit);

    await events.doc(habit.id).set(req);
    return habit;
  }

  @override
  Future<PaginatedList<ShortEvent>> eventsByLocation({
    required Coords coords,
    Object? cursor,
    int limit = 15,
  }) {
    // TODO: implement eventsByLocation
    throw UnimplementedError();
  }
}
