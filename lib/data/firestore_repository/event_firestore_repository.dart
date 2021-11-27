import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hackathon_lviv/data/models/event.dart';
import 'package:hackathon_lviv/domain/models/event.dart';
import 'package:hackathon_lviv/domain/models/short_event.dart';
import 'package:hackathon_lviv/domain/models/coords.dart';
import 'package:hackathon_lviv/domain/repository/event_repository.dart';
import 'package:hackathon_lviv/util/paginated_list.dart';

class EventFirestoreRepository extends EventRepository {
  final FirebaseFirestore firestore;
  late CollectionReference<EventResponse> events =
      firestore.collection('events').withConverter<EventResponse>(
            fromFirestore: (s, o) => EventResponse.fromDocument(s, o),
            toFirestore: (r, o) => r.toDocument(),
          );

  EventFirestoreRepository({required this.firestore});

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
  }) async {
    final list = List.generate(
      10,
      (index) => ShortEvent(
        id: '$index',
        coords: Coords(lat: coords.lat + 0.00005, lng: coords.lng),
        begin: DateTime.now(),
        previewUrl:
            'https://images.ctfassets.net/hrltx12pl8hq/7yQR5uJhwEkRfjwMFJ7bUK/dc52a0913e8ff8b5c276177890eb0129/offset_comp_772626-opt.jpg?fit=fill&w=800&h=300',
        name: 'Event $index',
        members: index % 5,
      ),
    );
    return PaginatedList(data: list, cursor: null, loadedAllItems: true);
  }
}
