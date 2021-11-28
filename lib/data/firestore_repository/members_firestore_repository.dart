import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hackathon_lviv/data/models/member_relation.dart';
import 'package:hackathon_lviv/domain/repository/members_repository.dart';

class MembersFirestoreRepository implements MembersRepository {
  final FirebaseFirestore firestore;
  late CollectionReference<MemberRelation> members =
      firestore.collection('members').withConverter<MemberRelation>(
            fromFirestore: (s, o) => MemberRelation.fromDocument(s, o),
            toFirestore: (r, o) => r.toDocument(),
          );

  MembersFirestoreRepository({required this.firestore});

  @override
  Future<List<String>> eventMembers(String id) async {
    final res = await members.where('eventId', isEqualTo: id).get();
    return res.docs.map((e) => e.data().userId).toList();
  }

  @override
  Future<bool> addParticipance(
    String id,
    String userId,
  ) async {
    await members.add(MemberRelation(eventId: id, userId: userId));
    return true;
  }

  @override
  Future<bool> removeParticipance(String id, String userId) async {
    final res = await members
        .where('eventId', isEqualTo: id)
        .where('userId', isEqualTo: userId)
        .limit(1)
        .get();
    if (res.docs.isEmpty) return false;
    final docId = res.docs.first.id;
    await members.doc(docId).delete();
    return true;
  }
}
