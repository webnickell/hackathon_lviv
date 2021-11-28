abstract class MembersRepository {
  Future<List<String>> eventMembers(String id);

  Future<bool> addParticipance(
    String id,
    String userId,
  );

  Future<bool> removeParticipance(
    String id,
    String userId,
  );
}
