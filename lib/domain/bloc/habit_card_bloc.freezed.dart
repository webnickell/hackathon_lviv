// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'habit_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HabitCardEventTearOff {
  const _$HabitCardEventTearOff();

  DaySubmitted submitDay({required bool isSuccess, required DateTime date}) {
    return DaySubmitted(
      isSuccess: isSuccess,
      date: date,
    );
  }

  LoadHabitDataEvent loadHabitData(
      {required String habitId, required int month}) {
    return LoadHabitDataEvent(
      habitId: habitId,
      month: month,
    );
  }
}

/// @nodoc
const $HabitCardEvent = _$HabitCardEventTearOff();

/// @nodoc
mixin _$HabitCardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSuccess, DateTime date) submitDay,
    required TResult Function(String habitId, int month) loadHabitData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSuccess, DateTime date)? submitDay,
    TResult Function(String habitId, int month)? loadHabitData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSuccess, DateTime date)? submitDay,
    TResult Function(String habitId, int month)? loadHabitData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaySubmitted value) submitDay,
    required TResult Function(LoadHabitDataEvent value) loadHabitData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DaySubmitted value)? submitDay,
    TResult Function(LoadHabitDataEvent value)? loadHabitData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaySubmitted value)? submitDay,
    TResult Function(LoadHabitDataEvent value)? loadHabitData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCardEventCopyWith<$Res> {
  factory $HabitCardEventCopyWith(
          HabitCardEvent value, $Res Function(HabitCardEvent) then) =
      _$HabitCardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitCardEventCopyWithImpl<$Res>
    implements $HabitCardEventCopyWith<$Res> {
  _$HabitCardEventCopyWithImpl(this._value, this._then);

  final HabitCardEvent _value;
  // ignore: unused_field
  final $Res Function(HabitCardEvent) _then;
}

/// @nodoc
abstract class $DaySubmittedCopyWith<$Res> {
  factory $DaySubmittedCopyWith(
          DaySubmitted value, $Res Function(DaySubmitted) then) =
      _$DaySubmittedCopyWithImpl<$Res>;
  $Res call({bool isSuccess, DateTime date});
}

/// @nodoc
class _$DaySubmittedCopyWithImpl<$Res>
    extends _$HabitCardEventCopyWithImpl<$Res>
    implements $DaySubmittedCopyWith<$Res> {
  _$DaySubmittedCopyWithImpl(
      DaySubmitted _value, $Res Function(DaySubmitted) _then)
      : super(_value, (v) => _then(v as DaySubmitted));

  @override
  DaySubmitted get _value => super._value as DaySubmitted;

  @override
  $Res call({
    Object? isSuccess = freezed,
    Object? date = freezed,
  }) {
    return _then(DaySubmitted(
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DaySubmitted extends DaySubmitted {
  const _$DaySubmitted({required this.isSuccess, required this.date})
      : super._();

  @override
  final bool isSuccess;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'HabitCardEvent.submitDay(isSuccess: $isSuccess, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DaySubmitted &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, date);

  @JsonKey(ignore: true)
  @override
  $DaySubmittedCopyWith<DaySubmitted> get copyWith =>
      _$DaySubmittedCopyWithImpl<DaySubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSuccess, DateTime date) submitDay,
    required TResult Function(String habitId, int month) loadHabitData,
  }) {
    return submitDay(isSuccess, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSuccess, DateTime date)? submitDay,
    TResult Function(String habitId, int month)? loadHabitData,
  }) {
    return submitDay?.call(isSuccess, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSuccess, DateTime date)? submitDay,
    TResult Function(String habitId, int month)? loadHabitData,
    required TResult orElse(),
  }) {
    if (submitDay != null) {
      return submitDay(isSuccess, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaySubmitted value) submitDay,
    required TResult Function(LoadHabitDataEvent value) loadHabitData,
  }) {
    return submitDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DaySubmitted value)? submitDay,
    TResult Function(LoadHabitDataEvent value)? loadHabitData,
  }) {
    return submitDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaySubmitted value)? submitDay,
    TResult Function(LoadHabitDataEvent value)? loadHabitData,
    required TResult orElse(),
  }) {
    if (submitDay != null) {
      return submitDay(this);
    }
    return orElse();
  }
}

abstract class DaySubmitted extends HabitCardEvent {
  const factory DaySubmitted(
      {required bool isSuccess, required DateTime date}) = _$DaySubmitted;
  const DaySubmitted._() : super._();

  bool get isSuccess;
  DateTime get date;
  @JsonKey(ignore: true)
  $DaySubmittedCopyWith<DaySubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadHabitDataEventCopyWith<$Res> {
  factory $LoadHabitDataEventCopyWith(
          LoadHabitDataEvent value, $Res Function(LoadHabitDataEvent) then) =
      _$LoadHabitDataEventCopyWithImpl<$Res>;
  $Res call({String habitId, int month});
}

/// @nodoc
class _$LoadHabitDataEventCopyWithImpl<$Res>
    extends _$HabitCardEventCopyWithImpl<$Res>
    implements $LoadHabitDataEventCopyWith<$Res> {
  _$LoadHabitDataEventCopyWithImpl(
      LoadHabitDataEvent _value, $Res Function(LoadHabitDataEvent) _then)
      : super(_value, (v) => _then(v as LoadHabitDataEvent));

  @override
  LoadHabitDataEvent get _value => super._value as LoadHabitDataEvent;

  @override
  $Res call({
    Object? habitId = freezed,
    Object? month = freezed,
  }) {
    return _then(LoadHabitDataEvent(
      habitId: habitId == freezed
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as String,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadHabitDataEvent extends LoadHabitDataEvent {
  const _$LoadHabitDataEvent({required this.habitId, required this.month})
      : super._();

  @override
  final String habitId;
  @override
  final int month;

  @override
  String toString() {
    return 'HabitCardEvent.loadHabitData(habitId: $habitId, month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadHabitDataEvent &&
            (identical(other.habitId, habitId) || other.habitId == habitId) &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habitId, month);

  @JsonKey(ignore: true)
  @override
  $LoadHabitDataEventCopyWith<LoadHabitDataEvent> get copyWith =>
      _$LoadHabitDataEventCopyWithImpl<LoadHabitDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSuccess, DateTime date) submitDay,
    required TResult Function(String habitId, int month) loadHabitData,
  }) {
    return loadHabitData(habitId, month);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSuccess, DateTime date)? submitDay,
    TResult Function(String habitId, int month)? loadHabitData,
  }) {
    return loadHabitData?.call(habitId, month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSuccess, DateTime date)? submitDay,
    TResult Function(String habitId, int month)? loadHabitData,
    required TResult orElse(),
  }) {
    if (loadHabitData != null) {
      return loadHabitData(habitId, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaySubmitted value) submitDay,
    required TResult Function(LoadHabitDataEvent value) loadHabitData,
  }) {
    return loadHabitData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DaySubmitted value)? submitDay,
    TResult Function(LoadHabitDataEvent value)? loadHabitData,
  }) {
    return loadHabitData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaySubmitted value)? submitDay,
    TResult Function(LoadHabitDataEvent value)? loadHabitData,
    required TResult orElse(),
  }) {
    if (loadHabitData != null) {
      return loadHabitData(this);
    }
    return orElse();
  }
}

abstract class LoadHabitDataEvent extends HabitCardEvent {
  const factory LoadHabitDataEvent(
      {required String habitId, required int month}) = _$LoadHabitDataEvent;
  const LoadHabitDataEvent._() : super._();

  String get habitId;
  int get month;
  @JsonKey(ignore: true)
  $LoadHabitDataEventCopyWith<LoadHabitDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HabitCardStateTearOff {
  const _$HabitCardStateTearOff();

  HabitDataLoadInitial initial() {
    return const HabitDataLoadInitial();
  }

  SubmitLoadInProgress submitLoading() {
    return const SubmitLoadInProgress();
  }

  SubmitLoadSuccess submitSuccess() {
    return const SubmitLoadSuccess();
  }

  HabitDataLoadInProgress loading() {
    return const HabitDataLoadInProgress();
  }

  HabitDataLoadSuccess loaded(
      {required Habit habit, required MonthlyTrack track}) {
    return HabitDataLoadSuccess(
      habit: habit,
      track: track,
    );
  }

  HabitDataLoadError error() {
    return const HabitDataLoadError();
  }
}

/// @nodoc
const $HabitCardState = _$HabitCardStateTearOff();

/// @nodoc
mixin _$HabitCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submitLoading,
    required TResult Function() submitSuccess,
    required TResult Function() loading,
    required TResult Function(Habit habit, MonthlyTrack track) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitDataLoadInitial value) initial,
    required TResult Function(SubmitLoadInProgress value) submitLoading,
    required TResult Function(SubmitLoadSuccess value) submitSuccess,
    required TResult Function(HabitDataLoadInProgress value) loading,
    required TResult Function(HabitDataLoadSuccess value) loaded,
    required TResult Function(HabitDataLoadError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCardStateCopyWith<$Res> {
  factory $HabitCardStateCopyWith(
          HabitCardState value, $Res Function(HabitCardState) then) =
      _$HabitCardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitCardStateCopyWithImpl<$Res>
    implements $HabitCardStateCopyWith<$Res> {
  _$HabitCardStateCopyWithImpl(this._value, this._then);

  final HabitCardState _value;
  // ignore: unused_field
  final $Res Function(HabitCardState) _then;
}

/// @nodoc
abstract class $HabitDataLoadInitialCopyWith<$Res> {
  factory $HabitDataLoadInitialCopyWith(HabitDataLoadInitial value,
          $Res Function(HabitDataLoadInitial) then) =
      _$HabitDataLoadInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitDataLoadInitialCopyWithImpl<$Res>
    extends _$HabitCardStateCopyWithImpl<$Res>
    implements $HabitDataLoadInitialCopyWith<$Res> {
  _$HabitDataLoadInitialCopyWithImpl(
      HabitDataLoadInitial _value, $Res Function(HabitDataLoadInitial) _then)
      : super(_value, (v) => _then(v as HabitDataLoadInitial));

  @override
  HabitDataLoadInitial get _value => super._value as HabitDataLoadInitial;
}

/// @nodoc

class _$HabitDataLoadInitial extends HabitDataLoadInitial {
  const _$HabitDataLoadInitial() : super._();

  @override
  String toString() {
    return 'HabitCardState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HabitDataLoadInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submitLoading,
    required TResult Function() submitSuccess,
    required TResult Function() loading,
    required TResult Function(Habit habit, MonthlyTrack track) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
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
    required TResult Function(HabitDataLoadInitial value) initial,
    required TResult Function(SubmitLoadInProgress value) submitLoading,
    required TResult Function(SubmitLoadSuccess value) submitSuccess,
    required TResult Function(HabitDataLoadInProgress value) loading,
    required TResult Function(HabitDataLoadSuccess value) loaded,
    required TResult Function(HabitDataLoadError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HabitDataLoadInitial extends HabitCardState {
  const factory HabitDataLoadInitial() = _$HabitDataLoadInitial;
  const HabitDataLoadInitial._() : super._();
}

/// @nodoc
abstract class $SubmitLoadInProgressCopyWith<$Res> {
  factory $SubmitLoadInProgressCopyWith(SubmitLoadInProgress value,
          $Res Function(SubmitLoadInProgress) then) =
      _$SubmitLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitLoadInProgressCopyWithImpl<$Res>
    extends _$HabitCardStateCopyWithImpl<$Res>
    implements $SubmitLoadInProgressCopyWith<$Res> {
  _$SubmitLoadInProgressCopyWithImpl(
      SubmitLoadInProgress _value, $Res Function(SubmitLoadInProgress) _then)
      : super(_value, (v) => _then(v as SubmitLoadInProgress));

  @override
  SubmitLoadInProgress get _value => super._value as SubmitLoadInProgress;
}

/// @nodoc

class _$SubmitLoadInProgress extends SubmitLoadInProgress {
  const _$SubmitLoadInProgress() : super._();

  @override
  String toString() {
    return 'HabitCardState.submitLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SubmitLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submitLoading,
    required TResult Function() submitSuccess,
    required TResult Function() loading,
    required TResult Function(Habit habit, MonthlyTrack track) loaded,
    required TResult Function() error,
  }) {
    return submitLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
    TResult Function()? error,
  }) {
    return submitLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (submitLoading != null) {
      return submitLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitDataLoadInitial value) initial,
    required TResult Function(SubmitLoadInProgress value) submitLoading,
    required TResult Function(SubmitLoadSuccess value) submitSuccess,
    required TResult Function(HabitDataLoadInProgress value) loading,
    required TResult Function(HabitDataLoadSuccess value) loaded,
    required TResult Function(HabitDataLoadError value) error,
  }) {
    return submitLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
  }) {
    return submitLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
    required TResult orElse(),
  }) {
    if (submitLoading != null) {
      return submitLoading(this);
    }
    return orElse();
  }
}

abstract class SubmitLoadInProgress extends HabitCardState {
  const factory SubmitLoadInProgress() = _$SubmitLoadInProgress;
  const SubmitLoadInProgress._() : super._();
}

/// @nodoc
abstract class $SubmitLoadSuccessCopyWith<$Res> {
  factory $SubmitLoadSuccessCopyWith(
          SubmitLoadSuccess value, $Res Function(SubmitLoadSuccess) then) =
      _$SubmitLoadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitLoadSuccessCopyWithImpl<$Res>
    extends _$HabitCardStateCopyWithImpl<$Res>
    implements $SubmitLoadSuccessCopyWith<$Res> {
  _$SubmitLoadSuccessCopyWithImpl(
      SubmitLoadSuccess _value, $Res Function(SubmitLoadSuccess) _then)
      : super(_value, (v) => _then(v as SubmitLoadSuccess));

  @override
  SubmitLoadSuccess get _value => super._value as SubmitLoadSuccess;
}

/// @nodoc

class _$SubmitLoadSuccess extends SubmitLoadSuccess {
  const _$SubmitLoadSuccess() : super._();

  @override
  String toString() {
    return 'HabitCardState.submitSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SubmitLoadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submitLoading,
    required TResult Function() submitSuccess,
    required TResult Function() loading,
    required TResult Function(Habit habit, MonthlyTrack track) loaded,
    required TResult Function() error,
  }) {
    return submitSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
    TResult Function()? error,
  }) {
    return submitSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitDataLoadInitial value) initial,
    required TResult Function(SubmitLoadInProgress value) submitLoading,
    required TResult Function(SubmitLoadSuccess value) submitSuccess,
    required TResult Function(HabitDataLoadInProgress value) loading,
    required TResult Function(HabitDataLoadSuccess value) loaded,
    required TResult Function(HabitDataLoadError value) error,
  }) {
    return submitSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
  }) {
    return submitSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess(this);
    }
    return orElse();
  }
}

abstract class SubmitLoadSuccess extends HabitCardState {
  const factory SubmitLoadSuccess() = _$SubmitLoadSuccess;
  const SubmitLoadSuccess._() : super._();
}

/// @nodoc
abstract class $HabitDataLoadInProgressCopyWith<$Res> {
  factory $HabitDataLoadInProgressCopyWith(HabitDataLoadInProgress value,
          $Res Function(HabitDataLoadInProgress) then) =
      _$HabitDataLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitDataLoadInProgressCopyWithImpl<$Res>
    extends _$HabitCardStateCopyWithImpl<$Res>
    implements $HabitDataLoadInProgressCopyWith<$Res> {
  _$HabitDataLoadInProgressCopyWithImpl(HabitDataLoadInProgress _value,
      $Res Function(HabitDataLoadInProgress) _then)
      : super(_value, (v) => _then(v as HabitDataLoadInProgress));

  @override
  HabitDataLoadInProgress get _value => super._value as HabitDataLoadInProgress;
}

/// @nodoc

class _$HabitDataLoadInProgress extends HabitDataLoadInProgress {
  const _$HabitDataLoadInProgress() : super._();

  @override
  String toString() {
    return 'HabitCardState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HabitDataLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submitLoading,
    required TResult Function() submitSuccess,
    required TResult Function() loading,
    required TResult Function(Habit habit, MonthlyTrack track) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
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
    required TResult Function(HabitDataLoadInitial value) initial,
    required TResult Function(SubmitLoadInProgress value) submitLoading,
    required TResult Function(SubmitLoadSuccess value) submitSuccess,
    required TResult Function(HabitDataLoadInProgress value) loading,
    required TResult Function(HabitDataLoadSuccess value) loaded,
    required TResult Function(HabitDataLoadError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HabitDataLoadInProgress extends HabitCardState {
  const factory HabitDataLoadInProgress() = _$HabitDataLoadInProgress;
  const HabitDataLoadInProgress._() : super._();
}

/// @nodoc
abstract class $HabitDataLoadSuccessCopyWith<$Res> {
  factory $HabitDataLoadSuccessCopyWith(HabitDataLoadSuccess value,
          $Res Function(HabitDataLoadSuccess) then) =
      _$HabitDataLoadSuccessCopyWithImpl<$Res>;
  $Res call({Habit habit, MonthlyTrack track});
}

/// @nodoc
class _$HabitDataLoadSuccessCopyWithImpl<$Res>
    extends _$HabitCardStateCopyWithImpl<$Res>
    implements $HabitDataLoadSuccessCopyWith<$Res> {
  _$HabitDataLoadSuccessCopyWithImpl(
      HabitDataLoadSuccess _value, $Res Function(HabitDataLoadSuccess) _then)
      : super(_value, (v) => _then(v as HabitDataLoadSuccess));

  @override
  HabitDataLoadSuccess get _value => super._value as HabitDataLoadSuccess;

  @override
  $Res call({
    Object? habit = freezed,
    Object? track = freezed,
  }) {
    return _then(HabitDataLoadSuccess(
      habit: habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
      track: track == freezed
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as MonthlyTrack,
    ));
  }
}

/// @nodoc

class _$HabitDataLoadSuccess extends HabitDataLoadSuccess {
  const _$HabitDataLoadSuccess({required this.habit, required this.track})
      : super._();

  @override
  final Habit habit;
  @override
  final MonthlyTrack track;

  @override
  String toString() {
    return 'HabitCardState.loaded(habit: $habit, track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HabitDataLoadSuccess &&
            (identical(other.habit, habit) || other.habit == habit) &&
            (identical(other.track, track) || other.track == track));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habit, track);

  @JsonKey(ignore: true)
  @override
  $HabitDataLoadSuccessCopyWith<HabitDataLoadSuccess> get copyWith =>
      _$HabitDataLoadSuccessCopyWithImpl<HabitDataLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submitLoading,
    required TResult Function() submitSuccess,
    required TResult Function() loading,
    required TResult Function(Habit habit, MonthlyTrack track) loaded,
    required TResult Function() error,
  }) {
    return loaded(habit, track);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(habit, track);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(habit, track);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitDataLoadInitial value) initial,
    required TResult Function(SubmitLoadInProgress value) submitLoading,
    required TResult Function(SubmitLoadSuccess value) submitSuccess,
    required TResult Function(HabitDataLoadInProgress value) loading,
    required TResult Function(HabitDataLoadSuccess value) loaded,
    required TResult Function(HabitDataLoadError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HabitDataLoadSuccess extends HabitCardState {
  const factory HabitDataLoadSuccess(
      {required Habit habit,
      required MonthlyTrack track}) = _$HabitDataLoadSuccess;
  const HabitDataLoadSuccess._() : super._();

  Habit get habit;
  MonthlyTrack get track;
  @JsonKey(ignore: true)
  $HabitDataLoadSuccessCopyWith<HabitDataLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitDataLoadErrorCopyWith<$Res> {
  factory $HabitDataLoadErrorCopyWith(
          HabitDataLoadError value, $Res Function(HabitDataLoadError) then) =
      _$HabitDataLoadErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitDataLoadErrorCopyWithImpl<$Res>
    extends _$HabitCardStateCopyWithImpl<$Res>
    implements $HabitDataLoadErrorCopyWith<$Res> {
  _$HabitDataLoadErrorCopyWithImpl(
      HabitDataLoadError _value, $Res Function(HabitDataLoadError) _then)
      : super(_value, (v) => _then(v as HabitDataLoadError));

  @override
  HabitDataLoadError get _value => super._value as HabitDataLoadError;
}

/// @nodoc

class _$HabitDataLoadError extends HabitDataLoadError {
  const _$HabitDataLoadError() : super._();

  @override
  String toString() {
    return 'HabitCardState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HabitDataLoadError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submitLoading,
    required TResult Function() submitSuccess,
    required TResult Function() loading,
    required TResult Function(Habit habit, MonthlyTrack track) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submitLoading,
    TResult Function()? submitSuccess,
    TResult Function()? loading,
    TResult Function(Habit habit, MonthlyTrack track)? loaded,
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
    required TResult Function(HabitDataLoadInitial value) initial,
    required TResult Function(SubmitLoadInProgress value) submitLoading,
    required TResult Function(SubmitLoadSuccess value) submitSuccess,
    required TResult Function(HabitDataLoadInProgress value) loading,
    required TResult Function(HabitDataLoadSuccess value) loaded,
    required TResult Function(HabitDataLoadError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(SubmitLoadInProgress value)? submitLoading,
    TResult Function(SubmitLoadSuccess value)? submitSuccess,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadSuccess value)? loaded,
    TResult Function(HabitDataLoadError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HabitDataLoadError extends HabitCardState {
  const factory HabitDataLoadError() = _$HabitDataLoadError;
  const HabitDataLoadError._() : super._();
}
