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

  LoadHabitDataEvent load(String id) {
    return LoadHabitDataEvent(
      id,
    );
  }

  SelectDate selectDate({required DateTime date}) {
    return SelectDate(
      date: date,
    );
  }

  SubmitDates submitDates() {
    return const SubmitDates();
  }
}

/// @nodoc
const $HabitCardEvent = _$HabitCardEventTearOff();

/// @nodoc
mixin _$HabitCardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) load,
    required TResult Function(DateTime date) selectDate,
    required TResult Function() submitDates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function(DateTime date)? selectDate,
    TResult Function()? submitDates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function(DateTime date)? selectDate,
    TResult Function()? submitDates,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHabitDataEvent value) load,
    required TResult Function(SelectDate value) selectDate,
    required TResult Function(SubmitDates value) submitDates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadHabitDataEvent value)? load,
    TResult Function(SelectDate value)? selectDate,
    TResult Function(SubmitDates value)? submitDates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHabitDataEvent value)? load,
    TResult Function(SelectDate value)? selectDate,
    TResult Function(SubmitDates value)? submitDates,
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
abstract class $LoadHabitDataEventCopyWith<$Res> {
  factory $LoadHabitDataEventCopyWith(
          LoadHabitDataEvent value, $Res Function(LoadHabitDataEvent) then) =
      _$LoadHabitDataEventCopyWithImpl<$Res>;
  $Res call({String id});
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
    Object? id = freezed,
  }) {
    return _then(LoadHabitDataEvent(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadHabitDataEvent extends LoadHabitDataEvent {
  const _$LoadHabitDataEvent(this.id) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'HabitCardEvent.load(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadHabitDataEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  $LoadHabitDataEventCopyWith<LoadHabitDataEvent> get copyWith =>
      _$LoadHabitDataEventCopyWithImpl<LoadHabitDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) load,
    required TResult Function(DateTime date) selectDate,
    required TResult Function() submitDates,
  }) {
    return load(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function(DateTime date)? selectDate,
    TResult Function()? submitDates,
  }) {
    return load?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function(DateTime date)? selectDate,
    TResult Function()? submitDates,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHabitDataEvent value) load,
    required TResult Function(SelectDate value) selectDate,
    required TResult Function(SubmitDates value) submitDates,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadHabitDataEvent value)? load,
    TResult Function(SelectDate value)? selectDate,
    TResult Function(SubmitDates value)? submitDates,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHabitDataEvent value)? load,
    TResult Function(SelectDate value)? selectDate,
    TResult Function(SubmitDates value)? submitDates,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadHabitDataEvent extends HabitCardEvent {
  const factory LoadHabitDataEvent(String id) = _$LoadHabitDataEvent;
  const LoadHabitDataEvent._() : super._();

  String get id;
  @JsonKey(ignore: true)
  $LoadHabitDataEventCopyWith<LoadHabitDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectDateCopyWith<$Res> {
  factory $SelectDateCopyWith(
          SelectDate value, $Res Function(SelectDate) then) =
      _$SelectDateCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class _$SelectDateCopyWithImpl<$Res> extends _$HabitCardEventCopyWithImpl<$Res>
    implements $SelectDateCopyWith<$Res> {
  _$SelectDateCopyWithImpl(SelectDate _value, $Res Function(SelectDate) _then)
      : super(_value, (v) => _then(v as SelectDate));

  @override
  SelectDate get _value => super._value as SelectDate;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(SelectDate(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SelectDate extends SelectDate {
  const _$SelectDate({required this.date}) : super._();

  @override
  final DateTime date;

  @override
  String toString() {
    return 'HabitCardEvent.selectDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectDate &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  $SelectDateCopyWith<SelectDate> get copyWith =>
      _$SelectDateCopyWithImpl<SelectDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) load,
    required TResult Function(DateTime date) selectDate,
    required TResult Function() submitDates,
  }) {
    return selectDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function(DateTime date)? selectDate,
    TResult Function()? submitDates,
  }) {
    return selectDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function(DateTime date)? selectDate,
    TResult Function()? submitDates,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHabitDataEvent value) load,
    required TResult Function(SelectDate value) selectDate,
    required TResult Function(SubmitDates value) submitDates,
  }) {
    return selectDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadHabitDataEvent value)? load,
    TResult Function(SelectDate value)? selectDate,
    TResult Function(SubmitDates value)? submitDates,
  }) {
    return selectDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHabitDataEvent value)? load,
    TResult Function(SelectDate value)? selectDate,
    TResult Function(SubmitDates value)? submitDates,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(this);
    }
    return orElse();
  }
}

abstract class SelectDate extends HabitCardEvent {
  const factory SelectDate({required DateTime date}) = _$SelectDate;
  const SelectDate._() : super._();

  DateTime get date;
  @JsonKey(ignore: true)
  $SelectDateCopyWith<SelectDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitDatesCopyWith<$Res> {
  factory $SubmitDatesCopyWith(
          SubmitDates value, $Res Function(SubmitDates) then) =
      _$SubmitDatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitDatesCopyWithImpl<$Res> extends _$HabitCardEventCopyWithImpl<$Res>
    implements $SubmitDatesCopyWith<$Res> {
  _$SubmitDatesCopyWithImpl(
      SubmitDates _value, $Res Function(SubmitDates) _then)
      : super(_value, (v) => _then(v as SubmitDates));

  @override
  SubmitDates get _value => super._value as SubmitDates;
}

/// @nodoc

class _$SubmitDates extends SubmitDates {
  const _$SubmitDates() : super._();

  @override
  String toString() {
    return 'HabitCardEvent.submitDates()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SubmitDates);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) load,
    required TResult Function(DateTime date) selectDate,
    required TResult Function() submitDates,
  }) {
    return submitDates();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function(DateTime date)? selectDate,
    TResult Function()? submitDates,
  }) {
    return submitDates?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function(DateTime date)? selectDate,
    TResult Function()? submitDates,
    required TResult orElse(),
  }) {
    if (submitDates != null) {
      return submitDates();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHabitDataEvent value) load,
    required TResult Function(SelectDate value) selectDate,
    required TResult Function(SubmitDates value) submitDates,
  }) {
    return submitDates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadHabitDataEvent value)? load,
    TResult Function(SelectDate value)? selectDate,
    TResult Function(SubmitDates value)? submitDates,
  }) {
    return submitDates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHabitDataEvent value)? load,
    TResult Function(SelectDate value)? selectDate,
    TResult Function(SubmitDates value)? submitDates,
    required TResult orElse(),
  }) {
    if (submitDates != null) {
      return submitDates(this);
    }
    return orElse();
  }
}

abstract class SubmitDates extends HabitCardEvent {
  const factory SubmitDates() = _$SubmitDates;
  const SubmitDates._() : super._();
}

/// @nodoc
class _$HabitCardStateTearOff {
  const _$HabitCardStateTearOff();

  HabitDataLoadInitial initial() {
    return const HabitDataLoadInitial();
  }

  HabitDataLoadInProgress loading() {
    return const HabitDataLoadInProgress();
  }

  HabitDataLoadData data(
      {required Habit habit,
      required Set<DateTime> markedDates,
      required Set<DateTime> selectedDates,
      bool loading = false,
      NetworkError? error}) {
    return HabitDataLoadData(
      habit: habit,
      markedDates: markedDates,
      selectedDates: selectedDates,
      loading: loading,
      error: error,
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
    required TResult Function() loading,
    required TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)
        data,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)?
        data,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)?
        data,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitDataLoadInitial value) initial,
    required TResult Function(HabitDataLoadInProgress value) loading,
    required TResult Function(HabitDataLoadData value) data,
    required TResult Function(HabitDataLoadError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadData value)? data,
    TResult Function(HabitDataLoadError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadData value)? data,
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
    required TResult Function() loading,
    required TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)
        data,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)?
        data,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)?
        data,
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
    required TResult Function(HabitDataLoadInProgress value) loading,
    required TResult Function(HabitDataLoadData value) data,
    required TResult Function(HabitDataLoadError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadData value)? data,
    TResult Function(HabitDataLoadError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadData value)? data,
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
    required TResult Function() loading,
    required TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)
        data,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)?
        data,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)?
        data,
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
    required TResult Function(HabitDataLoadInProgress value) loading,
    required TResult Function(HabitDataLoadData value) data,
    required TResult Function(HabitDataLoadError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadData value)? data,
    TResult Function(HabitDataLoadError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadData value)? data,
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
abstract class $HabitDataLoadDataCopyWith<$Res> {
  factory $HabitDataLoadDataCopyWith(
          HabitDataLoadData value, $Res Function(HabitDataLoadData) then) =
      _$HabitDataLoadDataCopyWithImpl<$Res>;
  $Res call(
      {Habit habit,
      Set<DateTime> markedDates,
      Set<DateTime> selectedDates,
      bool loading,
      NetworkError? error});
}

/// @nodoc
class _$HabitDataLoadDataCopyWithImpl<$Res>
    extends _$HabitCardStateCopyWithImpl<$Res>
    implements $HabitDataLoadDataCopyWith<$Res> {
  _$HabitDataLoadDataCopyWithImpl(
      HabitDataLoadData _value, $Res Function(HabitDataLoadData) _then)
      : super(_value, (v) => _then(v as HabitDataLoadData));

  @override
  HabitDataLoadData get _value => super._value as HabitDataLoadData;

  @override
  $Res call({
    Object? habit = freezed,
    Object? markedDates = freezed,
    Object? selectedDates = freezed,
    Object? loading = freezed,
    Object? error = freezed,
  }) {
    return _then(HabitDataLoadData(
      habit: habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
      markedDates: markedDates == freezed
          ? _value.markedDates
          : markedDates // ignore: cast_nullable_to_non_nullable
              as Set<DateTime>,
      selectedDates: selectedDates == freezed
          ? _value.selectedDates
          : selectedDates // ignore: cast_nullable_to_non_nullable
              as Set<DateTime>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError?,
    ));
  }
}

/// @nodoc

class _$HabitDataLoadData extends HabitDataLoadData {
  const _$HabitDataLoadData(
      {required this.habit,
      required this.markedDates,
      required this.selectedDates,
      this.loading = false,
      this.error})
      : super._();

  @override
  final Habit habit;
  @override
  final Set<DateTime> markedDates;
  @override
  final Set<DateTime> selectedDates;
  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final NetworkError? error;

  @override
  String toString() {
    return 'HabitCardState.data(habit: $habit, markedDates: $markedDates, selectedDates: $selectedDates, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HabitDataLoadData &&
            (identical(other.habit, habit) || other.habit == habit) &&
            const DeepCollectionEquality()
                .equals(other.markedDates, markedDates) &&
            const DeepCollectionEquality()
                .equals(other.selectedDates, selectedDates) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      habit,
      const DeepCollectionEquality().hash(markedDates),
      const DeepCollectionEquality().hash(selectedDates),
      loading,
      error);

  @JsonKey(ignore: true)
  @override
  $HabitDataLoadDataCopyWith<HabitDataLoadData> get copyWith =>
      _$HabitDataLoadDataCopyWithImpl<HabitDataLoadData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)
        data,
    required TResult Function() error,
  }) {
    return data(habit, markedDates, selectedDates, this.loading, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)?
        data,
    TResult Function()? error,
  }) {
    return data?.call(
        habit, markedDates, selectedDates, this.loading, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)?
        data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(habit, markedDates, selectedDates, this.loading, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HabitDataLoadInitial value) initial,
    required TResult Function(HabitDataLoadInProgress value) loading,
    required TResult Function(HabitDataLoadData value) data,
    required TResult Function(HabitDataLoadError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadData value)? data,
    TResult Function(HabitDataLoadError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadData value)? data,
    TResult Function(HabitDataLoadError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HabitDataLoadData extends HabitCardState {
  const factory HabitDataLoadData(
      {required Habit habit,
      required Set<DateTime> markedDates,
      required Set<DateTime> selectedDates,
      bool loading,
      NetworkError? error}) = _$HabitDataLoadData;
  const HabitDataLoadData._() : super._();

  Habit get habit;
  Set<DateTime> get markedDates;
  Set<DateTime> get selectedDates;
  bool get loading;
  NetworkError? get error;
  @JsonKey(ignore: true)
  $HabitDataLoadDataCopyWith<HabitDataLoadData> get copyWith =>
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
    required TResult Function() loading,
    required TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)
        data,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)?
        data,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Habit habit, Set<DateTime> markedDates,
            Set<DateTime> selectedDates, bool loading, NetworkError? error)?
        data,
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
    required TResult Function(HabitDataLoadInProgress value) loading,
    required TResult Function(HabitDataLoadData value) data,
    required TResult Function(HabitDataLoadError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadData value)? data,
    TResult Function(HabitDataLoadError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HabitDataLoadInitial value)? initial,
    TResult Function(HabitDataLoadInProgress value)? loading,
    TResult Function(HabitDataLoadData value)? data,
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
