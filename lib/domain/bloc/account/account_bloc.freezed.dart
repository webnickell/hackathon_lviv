// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountStateTearOff {
  const _$AccountStateTearOff();

  InitialAccountState initial() {
    return const InitialAccountState();
  }

  AuthorizedAccountState authorized({required Account account}) {
    return AuthorizedAccountState(
      account: account,
    );
  }

  UnauthorizedAccountState unauthorized() {
    return const UnauthorizedAccountState();
  }
}

/// @nodoc
const $AccountState = _$AccountStateTearOff();

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) authorized,
    required TResult Function() unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authorized,
    TResult Function()? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAccountState value) initial,
    required TResult Function(AuthorizedAccountState value) authorized,
    required TResult Function(UnauthorizedAccountState value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialAccountState value)? initial,
    TResult Function(AuthorizedAccountState value)? authorized,
    TResult Function(UnauthorizedAccountState value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAccountState value)? initial,
    TResult Function(AuthorizedAccountState value)? authorized,
    TResult Function(UnauthorizedAccountState value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  final AccountState _value;
  // ignore: unused_field
  final $Res Function(AccountState) _then;
}

/// @nodoc
abstract class $InitialAccountStateCopyWith<$Res> {
  factory $InitialAccountStateCopyWith(
          InitialAccountState value, $Res Function(InitialAccountState) then) =
      _$InitialAccountStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialAccountStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $InitialAccountStateCopyWith<$Res> {
  _$InitialAccountStateCopyWithImpl(
      InitialAccountState _value, $Res Function(InitialAccountState) _then)
      : super(_value, (v) => _then(v as InitialAccountState));

  @override
  InitialAccountState get _value => super._value as InitialAccountState;
}

/// @nodoc

class _$InitialAccountState extends InitialAccountState {
  const _$InitialAccountState() : super._();

  @override
  String toString() {
    return 'AccountState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialAccountState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) authorized,
    required TResult Function() unauthorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authorized,
    TResult Function()? unauthorized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAccountState value) initial,
    required TResult Function(AuthorizedAccountState value) authorized,
    required TResult Function(UnauthorizedAccountState value) unauthorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialAccountState value)? initial,
    TResult Function(AuthorizedAccountState value)? authorized,
    TResult Function(UnauthorizedAccountState value)? unauthorized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAccountState value)? initial,
    TResult Function(AuthorizedAccountState value)? authorized,
    TResult Function(UnauthorizedAccountState value)? unauthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialAccountState extends AccountState {
  const factory InitialAccountState() = _$InitialAccountState;
  const InitialAccountState._() : super._();
}

/// @nodoc
abstract class $AuthorizedAccountStateCopyWith<$Res> {
  factory $AuthorizedAccountStateCopyWith(AuthorizedAccountState value,
          $Res Function(AuthorizedAccountState) then) =
      _$AuthorizedAccountStateCopyWithImpl<$Res>;
  $Res call({Account account});
}

/// @nodoc
class _$AuthorizedAccountStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $AuthorizedAccountStateCopyWith<$Res> {
  _$AuthorizedAccountStateCopyWithImpl(AuthorizedAccountState _value,
      $Res Function(AuthorizedAccountState) _then)
      : super(_value, (v) => _then(v as AuthorizedAccountState));

  @override
  AuthorizedAccountState get _value => super._value as AuthorizedAccountState;

  @override
  $Res call({
    Object? account = freezed,
  }) {
    return _then(AuthorizedAccountState(
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc

class _$AuthorizedAccountState extends AuthorizedAccountState {
  const _$AuthorizedAccountState({required this.account}) : super._();

  @override
  final Account account;

  @override
  String toString() {
    return 'AccountState.authorized(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthorizedAccountState &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  $AuthorizedAccountStateCopyWith<AuthorizedAccountState> get copyWith =>
      _$AuthorizedAccountStateCopyWithImpl<AuthorizedAccountState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) authorized,
    required TResult Function() unauthorized,
  }) {
    return authorized(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authorized,
    TResult Function()? unauthorized,
  }) {
    return authorized?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAccountState value) initial,
    required TResult Function(AuthorizedAccountState value) authorized,
    required TResult Function(UnauthorizedAccountState value) unauthorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialAccountState value)? initial,
    TResult Function(AuthorizedAccountState value)? authorized,
    TResult Function(UnauthorizedAccountState value)? unauthorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAccountState value)? initial,
    TResult Function(AuthorizedAccountState value)? authorized,
    TResult Function(UnauthorizedAccountState value)? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class AuthorizedAccountState extends AccountState {
  const factory AuthorizedAccountState({required Account account}) =
      _$AuthorizedAccountState;
  const AuthorizedAccountState._() : super._();

  Account get account;
  @JsonKey(ignore: true)
  $AuthorizedAccountStateCopyWith<AuthorizedAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnauthorizedAccountStateCopyWith<$Res> {
  factory $UnauthorizedAccountStateCopyWith(UnauthorizedAccountState value,
          $Res Function(UnauthorizedAccountState) then) =
      _$UnauthorizedAccountStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthorizedAccountStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements $UnauthorizedAccountStateCopyWith<$Res> {
  _$UnauthorizedAccountStateCopyWithImpl(UnauthorizedAccountState _value,
      $Res Function(UnauthorizedAccountState) _then)
      : super(_value, (v) => _then(v as UnauthorizedAccountState));

  @override
  UnauthorizedAccountState get _value =>
      super._value as UnauthorizedAccountState;
}

/// @nodoc

class _$UnauthorizedAccountState extends UnauthorizedAccountState {
  const _$UnauthorizedAccountState() : super._();

  @override
  String toString() {
    return 'AccountState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnauthorizedAccountState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) authorized,
    required TResult Function() unauthorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authorized,
    TResult Function()? unauthorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAccountState value) initial,
    required TResult Function(AuthorizedAccountState value) authorized,
    required TResult Function(UnauthorizedAccountState value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialAccountState value)? initial,
    TResult Function(AuthorizedAccountState value)? authorized,
    TResult Function(UnauthorizedAccountState value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAccountState value)? initial,
    TResult Function(AuthorizedAccountState value)? authorized,
    TResult Function(UnauthorizedAccountState value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedAccountState extends AccountState {
  const factory UnauthorizedAccountState() = _$UnauthorizedAccountState;
  const UnauthorizedAccountState._() : super._();
}
