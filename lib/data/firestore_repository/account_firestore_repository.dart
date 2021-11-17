import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hackathon_lviv/domain/models/account.dart';
import 'package:hackathon_lviv/domain/repository/account_repository.dart';

class AccountFirestoreRepository implements AccountRepository {
  AccountFirestoreRepository({required this.firestore, required this.authId});

  final FirebaseFirestore firestore;
  final String authId;

  @override
  Future<Account> getMe() => firestore
      .collection('users')
      .doc(authId)
      .get()
      .then((value) => const Account(email: '', password: ''));
  // TODO: Map from real data
}
