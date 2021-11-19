// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInEventTearOff {
  const _$SignInEventTearOff();

  SetEmailSignInEvent setEmail(String value) {
    return SetEmailSignInEvent(
      value,
    );
  }

  SetPasswordSignInEvent setPassword(String value) {
    return SetPasswordSignInEvent(
      value,
    );
  }

  SubmitSignInEvent submit() {
    return const SubmitSignInEvent();
  }

  GoogleAuthSignInEvent googleAuth() {
    return const GoogleAuthSignInEvent();
  }
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function(String value) setPassword,
    required TResult Function() submit,
    required TResult Function() googleAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setPassword,
    TResult Function()? submit,
    TResult Function()? googleAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setPassword,
    TResult Function()? submit,
    TResult Function()? googleAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetEmailSignInEvent value) setEmail,
    required TResult Function(SetPasswordSignInEvent value) setPassword,
    required TResult Function(SubmitSignInEvent value) submit,
    required TResult Function(GoogleAuthSignInEvent value) googleAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetEmailSignInEvent value)? setEmail,
    TResult Function(SetPasswordSignInEvent value)? setPassword,
    TResult Function(SubmitSignInEvent value)? submit,
    TResult Function(GoogleAuthSignInEvent value)? googleAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetEmailSignInEvent value)? setEmail,
    TResult Function(SetPasswordSignInEvent value)? setPassword,
    TResult Function(SubmitSignInEvent value)? submit,
    TResult Function(GoogleAuthSignInEvent value)? googleAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class $SetEmailSignInEventCopyWith<$Res> {
  factory $SetEmailSignInEventCopyWith(
          SetEmailSignInEvent value, $Res Function(SetEmailSignInEvent) then) =
      _$SetEmailSignInEventCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SetEmailSignInEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SetEmailSignInEventCopyWith<$Res> {
  _$SetEmailSignInEventCopyWithImpl(
      SetEmailSignInEvent _value, $Res Function(SetEmailSignInEvent) _then)
      : super(_value, (v) => _then(v as SetEmailSignInEvent));

  @override
  SetEmailSignInEvent get _value => super._value as SetEmailSignInEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetEmailSignInEvent(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetEmailSignInEvent extends SetEmailSignInEvent {
  const _$SetEmailSignInEvent(this.value) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.setEmail(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetEmailSignInEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  $SetEmailSignInEventCopyWith<SetEmailSignInEvent> get copyWith =>
      _$SetEmailSignInEventCopyWithImpl<SetEmailSignInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function(String value) setPassword,
    required TResult Function() submit,
    required TResult Function() googleAuth,
  }) {
    return setEmail(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setPassword,
    TResult Function()? submit,
    TResult Function()? googleAuth,
  }) {
    return setEmail?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setPassword,
    TResult Function()? submit,
    TResult Function()? googleAuth,
    required TResult orElse(),
  }) {
    if (setEmail != null) {
      return setEmail(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetEmailSignInEvent value) setEmail,
    required TResult Function(SetPasswordSignInEvent value) setPassword,
    required TResult Function(SubmitSignInEvent value) submit,
    required TResult Function(GoogleAuthSignInEvent value) googleAuth,
  }) {
    return setEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetEmailSignInEvent value)? setEmail,
    TResult Function(SetPasswordSignInEvent value)? setPassword,
    TResult Function(SubmitSignInEvent value)? submit,
    TResult Function(GoogleAuthSignInEvent value)? googleAuth,
  }) {
    return setEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetEmailSignInEvent value)? setEmail,
    TResult Function(SetPasswordSignInEvent value)? setPassword,
    TResult Function(SubmitSignInEvent value)? submit,
    TResult Function(GoogleAuthSignInEvent value)? googleAuth,
    required TResult orElse(),
  }) {
    if (setEmail != null) {
      return setEmail(this);
    }
    return orElse();
  }
}

abstract class SetEmailSignInEvent extends SignInEvent {
  const factory SetEmailSignInEvent(String value) = _$SetEmailSignInEvent;
  const SetEmailSignInEvent._() : super._();

  String get value;
  @JsonKey(ignore: true)
  $SetEmailSignInEventCopyWith<SetEmailSignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPasswordSignInEventCopyWith<$Res> {
  factory $SetPasswordSignInEventCopyWith(SetPasswordSignInEvent value,
          $Res Function(SetPasswordSignInEvent) then) =
      _$SetPasswordSignInEventCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SetPasswordSignInEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SetPasswordSignInEventCopyWith<$Res> {
  _$SetPasswordSignInEventCopyWithImpl(SetPasswordSignInEvent _value,
      $Res Function(SetPasswordSignInEvent) _then)
      : super(_value, (v) => _then(v as SetPasswordSignInEvent));

  @override
  SetPasswordSignInEvent get _value => super._value as SetPasswordSignInEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetPasswordSignInEvent(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetPasswordSignInEvent extends SetPasswordSignInEvent {
  const _$SetPasswordSignInEvent(this.value) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.setPassword(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetPasswordSignInEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  $SetPasswordSignInEventCopyWith<SetPasswordSignInEvent> get copyWith =>
      _$SetPasswordSignInEventCopyWithImpl<SetPasswordSignInEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function(String value) setPassword,
    required TResult Function() submit,
    required TResult Function() googleAuth,
  }) {
    return setPassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setPassword,
    TResult Function()? submit,
    TResult Function()? googleAuth,
  }) {
    return setPassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setPassword,
    TResult Function()? submit,
    TResult Function()? googleAuth,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetEmailSignInEvent value) setEmail,
    required TResult Function(SetPasswordSignInEvent value) setPassword,
    required TResult Function(SubmitSignInEvent value) submit,
    required TResult Function(GoogleAuthSignInEvent value) googleAuth,
  }) {
    return setPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetEmailSignInEvent value)? setEmail,
    TResult Function(SetPasswordSignInEvent value)? setPassword,
    TResult Function(SubmitSignInEvent value)? submit,
    TResult Function(GoogleAuthSignInEvent value)? googleAuth,
  }) {
    return setPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetEmailSignInEvent value)? setEmail,
    TResult Function(SetPasswordSignInEvent value)? setPassword,
    TResult Function(SubmitSignInEvent value)? submit,
    TResult Function(GoogleAuthSignInEvent value)? googleAuth,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(this);
    }
    return orElse();
  }
}

abstract class SetPasswordSignInEvent extends SignInEvent {
  const factory SetPasswordSignInEvent(String value) = _$SetPasswordSignInEvent;
  const SetPasswordSignInEvent._() : super._();

  String get value;
  @JsonKey(ignore: true)
  $SetPasswordSignInEventCopyWith<SetPasswordSignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitSignInEventCopyWith<$Res> {
  factory $SubmitSignInEventCopyWith(
          SubmitSignInEvent value, $Res Function(SubmitSignInEvent) then) =
      _$SubmitSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitSignInEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SubmitSignInEventCopyWith<$Res> {
  _$SubmitSignInEventCopyWithImpl(
      SubmitSignInEvent _value, $Res Function(SubmitSignInEvent) _then)
      : super(_value, (v) => _then(v as SubmitSignInEvent));

  @override
  SubmitSignInEvent get _value => super._value as SubmitSignInEvent;
}

/// @nodoc

class _$SubmitSignInEvent extends SubmitSignInEvent {
  const _$SubmitSignInEvent() : super._();

  @override
  String toString() {
    return 'SignInEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SubmitSignInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function(String value) setPassword,
    required TResult Function() submit,
    required TResult Function() googleAuth,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setPassword,
    TResult Function()? submit,
    TResult Function()? googleAuth,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setPassword,
    TResult Function()? submit,
    TResult Function()? googleAuth,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetEmailSignInEvent value) setEmail,
    required TResult Function(SetPasswordSignInEvent value) setPassword,
    required TResult Function(SubmitSignInEvent value) submit,
    required TResult Function(GoogleAuthSignInEvent value) googleAuth,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetEmailSignInEvent value)? setEmail,
    TResult Function(SetPasswordSignInEvent value)? setPassword,
    TResult Function(SubmitSignInEvent value)? submit,
    TResult Function(GoogleAuthSignInEvent value)? googleAuth,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetEmailSignInEvent value)? setEmail,
    TResult Function(SetPasswordSignInEvent value)? setPassword,
    TResult Function(SubmitSignInEvent value)? submit,
    TResult Function(GoogleAuthSignInEvent value)? googleAuth,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class SubmitSignInEvent extends SignInEvent {
  const factory SubmitSignInEvent() = _$SubmitSignInEvent;
  const SubmitSignInEvent._() : super._();
}

/// @nodoc
abstract class $GoogleAuthSignInEventCopyWith<$Res> {
  factory $GoogleAuthSignInEventCopyWith(GoogleAuthSignInEvent value,
          $Res Function(GoogleAuthSignInEvent) then) =
      _$GoogleAuthSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoogleAuthSignInEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $GoogleAuthSignInEventCopyWith<$Res> {
  _$GoogleAuthSignInEventCopyWithImpl(
      GoogleAuthSignInEvent _value, $Res Function(GoogleAuthSignInEvent) _then)
      : super(_value, (v) => _then(v as GoogleAuthSignInEvent));

  @override
  GoogleAuthSignInEvent get _value => super._value as GoogleAuthSignInEvent;
}

/// @nodoc

class _$GoogleAuthSignInEvent extends GoogleAuthSignInEvent {
  const _$GoogleAuthSignInEvent() : super._();

  @override
  String toString() {
    return 'SignInEvent.googleAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GoogleAuthSignInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) setEmail,
    required TResult Function(String value) setPassword,
    required TResult Function() submit,
    required TResult Function() googleAuth,
  }) {
    return googleAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setPassword,
    TResult Function()? submit,
    TResult Function()? googleAuth,
  }) {
    return googleAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? setEmail,
    TResult Function(String value)? setPassword,
    TResult Function()? submit,
    TResult Function()? googleAuth,
    required TResult orElse(),
  }) {
    if (googleAuth != null) {
      return googleAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetEmailSignInEvent value) setEmail,
    required TResult Function(SetPasswordSignInEvent value) setPassword,
    required TResult Function(SubmitSignInEvent value) submit,
    required TResult Function(GoogleAuthSignInEvent value) googleAuth,
  }) {
    return googleAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetEmailSignInEvent value)? setEmail,
    TResult Function(SetPasswordSignInEvent value)? setPassword,
    TResult Function(SubmitSignInEvent value)? submit,
    TResult Function(GoogleAuthSignInEvent value)? googleAuth,
  }) {
    return googleAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetEmailSignInEvent value)? setEmail,
    TResult Function(SetPasswordSignInEvent value)? setPassword,
    TResult Function(SubmitSignInEvent value)? submit,
    TResult Function(GoogleAuthSignInEvent value)? googleAuth,
    required TResult orElse(),
  }) {
    if (googleAuth != null) {
      return googleAuth(this);
    }
    return orElse();
  }
}

abstract class GoogleAuthSignInEvent extends SignInEvent {
  const factory GoogleAuthSignInEvent() = _$GoogleAuthSignInEvent;
  const GoogleAuthSignInEvent._() : super._();
}

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {String email = '',
      String password = '',
      bool loading = false,
      bool finished = false,
      bool invalidAttempt = false}) {
    return _SignInState(
      email: email,
      password: password,
      loading: loading,
      finished: finished,
      invalidAttempt: invalidAttempt,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get finished => throw _privateConstructorUsedError;
  bool get invalidAttempt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      bool loading,
      bool finished,
      bool invalidAttempt});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? loading = freezed,
    Object? finished = freezed,
    Object? invalidAttempt = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      finished: finished == freezed
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as bool,
      invalidAttempt: invalidAttempt == freezed
          ? _value.invalidAttempt
          : invalidAttempt // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      bool loading,
      bool finished,
      bool invalidAttempt});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? loading = freezed,
    Object? finished = freezed,
    Object? invalidAttempt = freezed,
  }) {
    return _then(_SignInState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      finished: finished == freezed
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as bool,
      invalidAttempt: invalidAttempt == freezed
          ? _value.invalidAttempt
          : invalidAttempt // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInState extends _SignInState {
  const _$_SignInState(
      {this.email = '',
      this.password = '',
      this.loading = false,
      this.finished = false,
      this.invalidAttempt = false})
      : super._();

  @JsonKey(defaultValue: '')
  @override
  final String email;
  @JsonKey(defaultValue: '')
  @override
  final String password;
  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @JsonKey(defaultValue: false)
  @override
  final bool finished;
  @JsonKey(defaultValue: false)
  @override
  final bool invalidAttempt;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, loading: $loading, finished: $finished, invalidAttempt: $invalidAttempt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.finished, finished) ||
                other.finished == finished) &&
            (identical(other.invalidAttempt, invalidAttempt) ||
                other.invalidAttempt == invalidAttempt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, loading, finished, invalidAttempt);

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState extends SignInState {
  const factory _SignInState(
      {String email,
      String password,
      bool loading,
      bool finished,
      bool invalidAttempt}) = _$_SignInState;
  const _SignInState._() : super._();

  @override
  String get email;
  @override
  String get password;
  @override
  bool get loading;
  @override
  bool get finished;
  @override
  bool get invalidAttempt;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
