import 'package:hackathon_lviv/domain/models/account.dart';

abstract class AccountRepository {
  Future<Account?> createAccount(Account account);

  Future<Account?> getMe();

  Future<Account?> getAccountById(String id);

  Future<List<Account>> getAccountsByIds(List<String> ids);
}
