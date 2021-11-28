import 'package:cloud_firestore/cloud_firestore.dart';

class MemberRelation {
  final String eventId;
  final String userId;

  MemberRelation({
    required this.eventId,
    required this.userId,
  });

  factory MemberRelation.fromDocument(
    DocumentSnapshot<Map<String, dynamic>> doc,
    SnapshotOptions? opts,
  ) {
    final data = doc.data()!;
    return MemberRelation(
      eventId: data['eventId'],
      userId: data['userId'],
    );
  }

  Map<String, dynamic> toDocument() => {
    'eventId': eventId,
    'userId': userId,
  };
}
