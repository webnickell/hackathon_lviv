import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hackathon_lviv/data/models/account.dart';
import 'package:hackathon_lviv/domain/models/account.dart';
import 'package:hackathon_lviv/domain/repository/account_repository.dart';

class AccountFirestoreRepository implements AccountRepository {
  AccountFirestoreRepository({required this.firestore, required this.authId});

  final FirebaseFirestore firestore;
  final String authId;
  late CollectionReference<AccountResponse> users =
      firestore.collection('users').withConverter(
            fromFirestore: (d, o) => AccountResponse.fromDocument(d, o),
            toFirestore: (r, o) => r.toDocument(),
          );

  @override
  Future<Account?> getMe() => getAccountById(authId);

  @override
  Future<List<Account>> getAccountsByIds(List<String> ids) {
    if (ids.isEmpty) return Future.value([]);
    return users
        .where(FieldPath.documentId, arrayContainsAny: ids)
        .get()
        .then((value) => value.docs.map((e) => e.data().toModel()).toList());
  }

  @override
  Future<Account?> getAccountById(String id) =>
      users.doc(id).get().then((value) => value.data()?.toModel());

  @override
  Future<Account?> createAccount(Account account) async {
    await users.doc(account.uid).set(AccountResponse.fromModel(account));

    return account;
  }
}
