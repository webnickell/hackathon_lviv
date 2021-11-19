import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hackathon_lviv/domain/repository/checked_days_repository.dart';

class CheckedDaysFirestoreRepository extends CheckedDaysRepository {
  CheckedDaysFirestoreRepository({
    required this.firestore,
    required this.authId,
  });

  final FirebaseFirestore firestore;
  final String authId;
  late CollectionReference<Map<String, dynamic>> habits =
      firestore.collection('users').doc(authId).collection('habits');
  
  static const _key = 'date';

  @override
  Future<List<DateTime>> dates(String habitId) async {
    final res = await habits.doc(habitId).collection('dates').get();
    return res.docs.map((e) => e[_key]).map((e) => DateTime.parse(e)).toList();
  }

  Future<void> writeDateInHabit(String habitId, DateTime date) async {
    await habits.doc(habitId).collection('dates').add({_key: date.toIso8601String()});
  }
}
