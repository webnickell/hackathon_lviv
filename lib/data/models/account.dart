import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hackathon_lviv/domain/models/account.dart';

class AccountResponse {
  final String id;
  final String? displayName;
  final String? photoUrl;

  AccountResponse({
    required this.id,
    this.displayName,
    this.photoUrl,
  });

  factory AccountResponse.fromDocument(
    DocumentSnapshot<Map<String, dynamic>> document,
    SnapshotOptions? options,
  ) {
    final data = document.data()!;
    return AccountResponse(
      id: document.id,
      displayName: data['displayName'] as String?,
      photoUrl: data['photoUrl'] as String?,
    );
  }

  factory AccountResponse.fromModel(Account model) => AccountResponse(
        id: model.uid,
        displayName: model.displayName,
        photoUrl: model.photoUrl,
      );

  Map<String, dynamic> toDocument() => {
        'displayName': displayName,
        'photoUrl': photoUrl,
      };

  Account toModel() => Account(
        uid: id,
        displayName: displayName,
        photoUrl: photoUrl,
      );
}
