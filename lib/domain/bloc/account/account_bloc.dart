import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackathon_lviv/domain/models/account.dart';

part 'account_bloc.freezed.dart';

@freezed
abstract class AccountState with _$AccountState {
  const AccountState._();

  const factory AccountState.initial() = InitialAccountState;
  const factory AccountState.authorized({
    required Account account,
  }) = AuthorizedAccountState;
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
          : AccountState.authorized(
              account: Account(
                uid: user.uid,
                displayName: user.displayName,
                photoUrl: user.photoURL,
              ),
            );
      emit(state);
    });
  }

  final FirebaseAuth firebaseAuth;
}
