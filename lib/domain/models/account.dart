class Account {
  final String uid;
  final String? displayName;
  final String? photoUrl;
  final int usefulHabits;
  final int uselessHabits;

  const Account({
    required this.uid,
    required this.displayName,
    required this.photoUrl,
    this.usefulHabits = 0,
    this.uselessHabits = 0,
  });
}
