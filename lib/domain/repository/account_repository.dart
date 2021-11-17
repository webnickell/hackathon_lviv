import 'package:hackathon_lviv/domain/models/account.dart';

abstract class AccountRepository {
  Future<Account> getMe();
}
