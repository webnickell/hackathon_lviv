import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_bloc.freezed.dart';

@freezed
abstract class AccountState with _$AccountState {
  const AccountState._();

  const factory AccountState.initial() = InitialAccountState;
  const factory AccountState.authorized() = AuthorizedAccountState;
  const factory AccountState.unauthorized() = UnauthorizedAccountState;
}

class AuthorizationBloc extends Cubit<AccountState> {
  AuthorizationBloc() : super(const AccountState.initial()) {
    emit(const AccountState.unauthorized());
  }

  void authorize() {
    emit(const AccountState.authorized());
  }
}
