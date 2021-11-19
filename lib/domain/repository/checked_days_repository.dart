abstract class CheckedDaysRepository {
  Future<List<DateTime>> dates(String habitId);

  Future<void> writeDateInHabit(String habitId, DateTime date);
}
