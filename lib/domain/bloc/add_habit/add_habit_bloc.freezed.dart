// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_habit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddHabitEventTearOff {
  const _$AddHabitEventTearOff();

  SubmitButtonPressed submit({required Habit habit}) {
    return SubmitButtonPressed(
      habit: habit,
    );
  }
}

/// @nodoc
const $AddHabitEvent = _$AddHabitEventTearOff();

/// @nodoc
mixin _$AddHabitEvent {
  Habit get habit => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Habit habit) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Habit habit)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Habit habit)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitButtonPressed value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitButtonPressed value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitButtonPressed value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddHabitEventCopyWith<AddHabitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddHabitEventCopyWith<$Res> {
  factory $AddHabitEventCopyWith(
          AddHabitEvent value, $Res Function(AddHabitEvent) then) =
      _$AddHabitEventCopyWithImpl<$Res>;
  $Res call({Habit habit});
}

/// @nodoc
class _$AddHabitEventCopyWithImpl<$Res>
    implements $AddHabitEventCopyWith<$Res> {
  _$AddHabitEventCopyWithImpl(this._value, this._then);

  final AddHabitEvent _value;
  // ignore: unused_field
  final $Res Function(AddHabitEvent) _then;

  @override
  $Res call({
    Object? habit = freezed,
  }) {
    return _then(_value.copyWith(
      habit: habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }
}

/// @nodoc
abstract class $SubmitButtonPressedCopyWith<$Res>
    implements $AddHabitEventCopyWith<$Res> {
  factory $SubmitButtonPressedCopyWith(
          SubmitButtonPressed value, $Res Function(SubmitButtonPressed) then) =
      _$SubmitButtonPressedCopyWithImpl<$Res>;
  @override
  $Res call({Habit habit});
}

/// @nodoc
class _$SubmitButtonPressedCopyWithImpl<$Res>
    extends _$AddHabitEventCopyWithImpl<$Res>
    implements $SubmitButtonPressedCopyWith<$Res> {
  _$SubmitButtonPressedCopyWithImpl(
      SubmitButtonPressed _value, $Res Function(SubmitButtonPressed) _then)
      : super(_value, (v) => _then(v as SubmitButtonPressed));

  @override
  SubmitButtonPressed get _value => super._value as SubmitButtonPressed;

  @override
  $Res call({
    Object? habit = freezed,
  }) {
    return _then(SubmitButtonPressed(
      habit: habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }
}

/// @nodoc

class _$SubmitButtonPressed extends SubmitButtonPressed {
  const _$SubmitButtonPressed({required this.habit}) : super._();

  @override
  final Habit habit;

  @override
  String toString() {
    return 'AddHabitEvent.submit(habit: $habit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubmitButtonPressed &&
            (identical(other.habit, habit) || other.habit == habit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habit);

  @JsonKey(ignore: true)
  @override
  $SubmitButtonPressedCopyWith<SubmitButtonPressed> get copyWith =>
      _$SubmitButtonPressedCopyWithImpl<SubmitButtonPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Habit habit) submit,
  }) {
    return submit(habit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Habit habit)? submit,
  }) {
    return submit?.call(habit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Habit habit)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitButtonPressed value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitButtonPressed value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitButtonPressed value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class SubmitButtonPressed extends AddHabitEvent {
  const factory SubmitButtonPressed({required Habit habit}) =
      _$SubmitButtonPressed;
  const SubmitButtonPressed._() : super._();

  @override
  Habit get habit;
  @override
  @JsonKey(ignore: true)
  $SubmitButtonPressedCopyWith<SubmitButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddHabitStateTearOff {
  const _$AddHabitStateTearOff();

  AddHabitInitial initial() {
    return const AddHabitInitial();
  }

  HabitLoadInProgress loading() {
    return const HabitLoadInProgress();
  }

  HabitCreationSuccess created({required Habit habit}) {
    return HabitCreationSuccess(
      habit: habit,
    );
  }

  HabitCreationError error() {
    return const HabitCreationError();
  }
}

/// @nodoc
const $AddHabitState = _$AddHabitStateTearOff();

/// @nodoc
mixin _$AddHabitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Habit habit) created,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit)? created,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit)? created,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddHabitInitial value) initial,
    required TResult Function(HabitLoadInProgress value) loading,
    required TResult Function(HabitCreationSuccess value) created,
    required TResult Function(HabitCreationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddHabitInitial value)? initial,
    TResult Function(HabitLoadInProgress value)? loading,
    TResult Function(HabitCreationSuccess value)? created,
    TResult Function(HabitCreationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabitInitial value)? initial,
    TResult Function(HabitLoadInProgress value)? loading,
    TResult Function(HabitCreationSuccess value)? created,
    TResult Function(HabitCreationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddHabitStateCopyWith<$Res> {
  factory $AddHabitStateCopyWith(
          AddHabitState value, $Res Function(AddHabitState) then) =
      _$AddHabitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddHabitStateCopyWithImpl<$Res>
    implements $AddHabitStateCopyWith<$Res> {
  _$AddHabitStateCopyWithImpl(this._value, this._then);

  final AddHabitState _value;
  // ignore: unused_field
  final $Res Function(AddHabitState) _then;
}

/// @nodoc
abstract class $AddHabitInitialCopyWith<$Res> {
  factory $AddHabitInitialCopyWith(
          AddHabitInitial value, $Res Function(AddHabitInitial) then) =
      _$AddHabitInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddHabitInitialCopyWithImpl<$Res>
    extends _$AddHabitStateCopyWithImpl<$Res>
    implements $AddHabitInitialCopyWith<$Res> {
  _$AddHabitInitialCopyWithImpl(
      AddHabitInitial _value, $Res Function(AddHabitInitial) _then)
      : super(_value, (v) => _then(v as AddHabitInitial));

  @override
  AddHabitInitial get _value => super._value as AddHabitInitial;
}

/// @nodoc

class _$AddHabitInitial extends AddHabitInitial {
  const _$AddHabitInitial() : super._();

  @override
  String toString() {
    return 'AddHabitState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddHabitInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Habit habit) created,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit)? created,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit)? created,
    TResult Function()? error,
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
    required TResult Function(AddHabitInitial value) initial,
    required TResult Function(HabitLoadInProgress value) loading,
    required TResult Function(HabitCreationSuccess value) created,
    required TResult Function(HabitCreationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddHabitInitial value)? initial,
    TResult Function(HabitLoadInProgress value)? loading,
    TResult Function(HabitCreationSuccess value)? created,
    TResult Function(HabitCreationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabitInitial value)? initial,
    TResult Function(HabitLoadInProgress value)? loading,
    TResult Function(HabitCreationSuccess value)? created,
    TResult Function(HabitCreationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AddHabitInitial extends AddHabitState {
  const factory AddHabitInitial() = _$AddHabitInitial;
  const AddHabitInitial._() : super._();
}

/// @nodoc
abstract class $HabitLoadInProgressCopyWith<$Res> {
  factory $HabitLoadInProgressCopyWith(
          HabitLoadInProgress value, $Res Function(HabitLoadInProgress) then) =
      _$HabitLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitLoadInProgressCopyWithImpl<$Res>
    extends _$AddHabitStateCopyWithImpl<$Res>
    implements $HabitLoadInProgressCopyWith<$Res> {
  _$HabitLoadInProgressCopyWithImpl(
      HabitLoadInProgress _value, $Res Function(HabitLoadInProgress) _then)
      : super(_value, (v) => _then(v as HabitLoadInProgress));

  @override
  HabitLoadInProgress get _value => super._value as HabitLoadInProgress;
}

/// @nodoc

class _$HabitLoadInProgress extends HabitLoadInProgress {
  const _$HabitLoadInProgress() : super._();

  @override
  String toString() {
    return 'AddHabitState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HabitLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Habit habit) created,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit)? created,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit)? created,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddHabitInitial value) initial,
    required TResult Function(HabitLoadInProgress value) loading,
    required TResult Function(HabitCreationSuccess value) created,
    required TResult Function(HabitCreationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddHabitInitial value)? initial,
    TResult Function(HabitLoadInProgress value)? loading,
    TResult Function(HabitCreationSuccess value)? created,
    TResult Function(HabitCreationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabitInitial value)? initial,
    TResult Function(HabitLoadInProgress value)? loading,
    TResult Function(HabitCreationSuccess value)? created,
    TResult Function(HabitCreationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HabitLoadInProgress extends AddHabitState {
  const factory HabitLoadInProgress() = _$HabitLoadInProgress;
  const HabitLoadInProgress._() : super._();
}

/// @nodoc
abstract class $HabitCreationSuccessCopyWith<$Res> {
  factory $HabitCreationSuccessCopyWith(HabitCreationSuccess value,
          $Res Function(HabitCreationSuccess) then) =
      _$HabitCreationSuccessCopyWithImpl<$Res>;
  $Res call({Habit habit});
}

/// @nodoc
class _$HabitCreationSuccessCopyWithImpl<$Res>
    extends _$AddHabitStateCopyWithImpl<$Res>
    implements $HabitCreationSuccessCopyWith<$Res> {
  _$HabitCreationSuccessCopyWithImpl(
      HabitCreationSuccess _value, $Res Function(HabitCreationSuccess) _then)
      : super(_value, (v) => _then(v as HabitCreationSuccess));

  @override
  HabitCreationSuccess get _value => super._value as HabitCreationSuccess;

  @override
  $Res call({
    Object? habit = freezed,
  }) {
    return _then(HabitCreationSuccess(
      habit: habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }
}

/// @nodoc

class _$HabitCreationSuccess extends HabitCreationSuccess {
  const _$HabitCreationSuccess({required this.habit}) : super._();

  @override
  final Habit habit;

  @override
  String toString() {
    return 'AddHabitState.created(habit: $habit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HabitCreationSuccess &&
            (identical(other.habit, habit) || other.habit == habit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habit);

  @JsonKey(ignore: true)
  @override
  $HabitCreationSuccessCopyWith<HabitCreationSuccess> get copyWith =>
      _$HabitCreationSuccessCopyWithImpl<HabitCreationSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Habit habit) created,
    required TResult Function() error,
  }) {
    return created(habit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit)? created,
    TResult Function()? error,
  }) {
    return created?.call(habit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit)? created,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddHabitInitial value) initial,
    required TResult Function(HabitLoadInProgress value) loading,
    required TResult Function(HabitCreationSuccess value) created,
    required TResult Function(HabitCreationError value) error,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddHabitInitial value)? initial,
    TResult Function(HabitLoadInProgress value)? loading,
    TResult Function(HabitCreationSuccess value)? created,
    TResult Function(HabitCreationError value)? error,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabitInitial value)? initial,
    TResult Function(HabitLoadInProgress value)? loading,
    TResult Function(HabitCreationSuccess value)? created,
    TResult Function(HabitCreationError value)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class HabitCreationSuccess extends AddHabitState {
  const factory HabitCreationSuccess({required Habit habit}) =
      _$HabitCreationSuccess;
  const HabitCreationSuccess._() : super._();

  Habit get habit;
  @JsonKey(ignore: true)
  $HabitCreationSuccessCopyWith<HabitCreationSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCreationErrorCopyWith<$Res> {
  factory $HabitCreationErrorCopyWith(
          HabitCreationError value, $Res Function(HabitCreationError) then) =
      _$HabitCreationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitCreationErrorCopyWithImpl<$Res>
    extends _$AddHabitStateCopyWithImpl<$Res>
    implements $HabitCreationErrorCopyWith<$Res> {
  _$HabitCreationErrorCopyWithImpl(
      HabitCreationError _value, $Res Function(HabitCreationError) _then)
      : super(_value, (v) => _then(v as HabitCreationError));

  @override
  HabitCreationError get _value => super._value as HabitCreationError;
}

/// @nodoc

class _$HabitCreationError extends HabitCreationError {
  const _$HabitCreationError() : super._();

  @override
  String toString() {
    return 'AddHabitState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HabitCreationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Habit habit) created,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit)? created,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit)? created,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddHabitInitial value) initial,
    required TResult Function(HabitLoadInProgress value) loading,
    required TResult Function(HabitCreationSuccess value) created,
    required TResult Function(HabitCreationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddHabitInitial value)? initial,
    TResult Function(HabitLoadInProgress value)? loading,
    TResult Function(HabitCreationSuccess value)? created,
    TResult Function(HabitCreationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabitInitial value)? initial,
    TResult Function(HabitLoadInProgress value)? loading,
    TResult Function(HabitCreationSuccess value)? created,
    TResult Function(HabitCreationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HabitCreationError extends AddHabitState {
  const factory HabitCreationError() = _$HabitCreationError;
  const HabitCreationError._() : super._();
}
