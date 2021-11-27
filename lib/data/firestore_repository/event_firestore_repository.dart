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

  @override
  Future<Event?> eventById(String id) async {
    return Event(
      id: id,
      begin: DateTime.now(),
      end: DateTime.now(),
      postScriptum: '',
      name: 'Name',
      description: 'Description',
      coords: Coords(
        lat: 49.50,
        lng: 24.00,
      ),
      authorId: '',
      images: [
        'https://deih43ym53wif.cloudfront.net/lviv-ukraine-shutterstock_231990358-2_996b60addc.jpeg',
        'https://cdn.getyourguide.com/img/location/595263265eaa0.jpeg/92.jpg',
        'https://kidpassage.com/images/publications/images/lvov-aprele-otdyh-pogoda-photo2(1).jpg'
      ],
    );
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
