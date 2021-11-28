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
    final req = EventResponse.fromModel(event);
    final ref = await events.add(req);
    final res = await ref.get();
    return res.data()!.toModel();
  }

  @override
  Future<Event> updateEvent(Event event) async {
    final req = EventResponse.fromModel(event);

    await events.doc(event.id).set(req);
    return event;
  }

  @override
  Future<PaginatedList<ShortEvent>> eventsByLocation({
    required Coords coords,
    Object? cursor,
    int limit = 15,
  }) async {
    final start = cursor == null
        ? events
        : events.startAfterDocument(cursor as DocumentSnapshot);
    final query = await start.limit(limit).get();
    final res = query.docs.map((e) => e.data().toShortModel()).toList();
    return PaginatedList(
        data: res, cursor: query.docs.last, loadedAllItems: true);
  }

  @override
  Future<PaginatedList<ShortEvent>> eventsByAuthor({
    required String id,
    Object? cursor,
    int limit = 15,
  }) async {
    final start = cursor == null
        ? events
        : events.startAfterDocument(cursor as DocumentSnapshot);
    final query =
        await start.where('authorId', isEqualTo: id).limit(limit).get();
    final res = query.docs.map((e) => e.data().toShortModel()).toList();
    return PaginatedList(
      data: res,
      cursor: query.docs.last,
      loadedAllItems: true,
    );
  }

  @override
  Future<Event?> eventById(String id) async {
    final res = await events.doc(id).get();
    return res.data()?.toModel();
  }

  @override
  Future<List<String>> eventMembers(String id) async {
    final res = await events.doc(id).collection('members').get();
    return res.docs.map((e) => e.id).toList();
  }

  @override
  Future<bool> addParticipance(
    String id,
    String userId,
  ) async {
    await events.doc(id).collection('members').doc(userId).set(const {});
    return true;
  }

  @override
  Future<bool> removeParticipance(String id, String userId) async {
    await events.doc(id).collection('members').doc(userId).delete();
    return true;
  }
}
