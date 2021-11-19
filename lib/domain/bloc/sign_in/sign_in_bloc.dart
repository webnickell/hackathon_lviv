import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'sign_in_bloc.freezed.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const SignInEvent._();

  const factory SignInEvent.setEmail(String value) = SetEmailSignInEvent;
  const factory SignInEvent.setPassword(String value) = SetPasswordSignInEvent;
  const factory SignInEvent.submit() = SubmitSignInEvent;
  const factory SignInEvent.googleAuth() = GoogleAuthSignInEvent;
}

@freezed
abstract class SignInState with _$SignInState {
  const SignInState._();

  const factory SignInState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool loading,
    @Default(false) bool finished,
    @Default(false) bool invalidAttempt,
  }) = _SignInState;
}

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) => event.map(
        setEmail: _mapSetEmailEventToState,
        setPassword: _mapSetPasswordEventToState,
        submit: _mapSubmitEventToState,
        googleAuth: _mapGoogleAuthEventToState,
      );

  Stream<SignInState> _mapSetEmailEventToState(
      SetEmailSignInEvent event) async* {
    yield state.copyWith(email: event.value);
  }

  Stream<SignInState> _mapSetPasswordEventToState(
      SetPasswordSignInEvent event) async* {
    yield state.copyWith(password: event.value);
  }

  Stream<SignInState> _mapSubmitEventToState(SubmitSignInEvent event) async* {
    // TODO : Add submit email and password
  }

  Stream<SignInState> _mapGoogleAuthEventToState(
      GoogleAuthSignInEvent event) async* {
    yield state.copyWith(loading: true, invalidAttempt: false);

    final googleUser = await GoogleSignIn().signIn();

    final googleAuth = await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
