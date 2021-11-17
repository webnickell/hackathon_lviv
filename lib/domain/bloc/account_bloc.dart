import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  AuthorizationBloc({
    required this.firebaseAuth,
  }) : super(const AccountState.initial()) {
    
    emit(const AccountState.unauthorized());
    firebaseAuth.authStateChanges().listen((user) {
      final state = user == null
          ? const AccountState.unauthorized()
          : const AccountState.authorized();
      emit(state);
    });
  }

  final FirebaseAuth firebaseAuth;
}
