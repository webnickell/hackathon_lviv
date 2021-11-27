// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventEventTearOff {
  const _$EventEventTearOff();

  LoadEventEvent load(String id) {
    return LoadEventEvent(
      id,
    );
  }

  ToggleParticipateEventEvent toggleParticipate() {
    return const ToggleParticipateEventEvent();
  }
}

/// @nodoc
const $EventEvent = _$EventEventTearOff();

/// @nodoc
mixin _$EventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) load,
    required TResult Function() toggleParticipate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function()? toggleParticipate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function()? toggleParticipate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadEventEvent value) load,
    required TResult Function(ToggleParticipateEventEvent value)
        toggleParticipate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadEventEvent value)? load,
    TResult Function(ToggleParticipateEventEvent value)? toggleParticipate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadEventEvent value)? load,
    TResult Function(ToggleParticipateEventEvent value)? toggleParticipate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEventCopyWith<$Res> {
  factory $EventEventCopyWith(
          EventEvent value, $Res Function(EventEvent) then) =
      _$EventEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventEventCopyWithImpl<$Res> implements $EventEventCopyWith<$Res> {
  _$EventEventCopyWithImpl(this._value, this._then);

  final EventEvent _value;
  // ignore: unused_field
  final $Res Function(EventEvent) _then;
}

/// @nodoc
abstract class $LoadEventEventCopyWith<$Res> {
  factory $LoadEventEventCopyWith(
          LoadEventEvent value, $Res Function(LoadEventEvent) then) =
      _$LoadEventEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$LoadEventEventCopyWithImpl<$Res> extends _$EventEventCopyWithImpl<$Res>
    implements $LoadEventEventCopyWith<$Res> {
  _$LoadEventEventCopyWithImpl(
      LoadEventEvent _value, $Res Function(LoadEventEvent) _then)
      : super(_value, (v) => _then(v as LoadEventEvent));

  @override
  LoadEventEvent get _value => super._value as LoadEventEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(LoadEventEvent(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadEventEvent extends LoadEventEvent {
  const _$LoadEventEvent(this.id) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'EventEvent.load(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadEventEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  $LoadEventEventCopyWith<LoadEventEvent> get copyWith =>
      _$LoadEventEventCopyWithImpl<LoadEventEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) load,
    required TResult Function() toggleParticipate,
  }) {
    return load(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function()? toggleParticipate,
  }) {
    return load?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function()? toggleParticipate,
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
    required TResult Function(LoadEventEvent value) load,
    required TResult Function(ToggleParticipateEventEvent value)
        toggleParticipate,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadEventEvent value)? load,
    TResult Function(ToggleParticipateEventEvent value)? toggleParticipate,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadEventEvent value)? load,
    TResult Function(ToggleParticipateEventEvent value)? toggleParticipate,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadEventEvent extends EventEvent {
  const factory LoadEventEvent(String id) = _$LoadEventEvent;
  const LoadEventEvent._() : super._();

  String get id;
  @JsonKey(ignore: true)
  $LoadEventEventCopyWith<LoadEventEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleParticipateEventEventCopyWith<$Res> {
  factory $ToggleParticipateEventEventCopyWith(
          ToggleParticipateEventEvent value,
          $Res Function(ToggleParticipateEventEvent) then) =
      _$ToggleParticipateEventEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToggleParticipateEventEventCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res>
    implements $ToggleParticipateEventEventCopyWith<$Res> {
  _$ToggleParticipateEventEventCopyWithImpl(ToggleParticipateEventEvent _value,
      $Res Function(ToggleParticipateEventEvent) _then)
      : super(_value, (v) => _then(v as ToggleParticipateEventEvent));

  @override
  ToggleParticipateEventEvent get _value =>
      super._value as ToggleParticipateEventEvent;
}

/// @nodoc

class _$ToggleParticipateEventEvent extends ToggleParticipateEventEvent {
  const _$ToggleParticipateEventEvent() : super._();

  @override
  String toString() {
    return 'EventEvent.toggleParticipate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToggleParticipateEventEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) load,
    required TResult Function() toggleParticipate,
  }) {
    return toggleParticipate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function()? toggleParticipate,
  }) {
    return toggleParticipate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function()? toggleParticipate,
    required TResult orElse(),
  }) {
    if (toggleParticipate != null) {
      return toggleParticipate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadEventEvent value) load,
    required TResult Function(ToggleParticipateEventEvent value)
        toggleParticipate,
  }) {
    return toggleParticipate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadEventEvent value)? load,
    TResult Function(ToggleParticipateEventEvent value)? toggleParticipate,
  }) {
    return toggleParticipate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadEventEvent value)? load,
    TResult Function(ToggleParticipateEventEvent value)? toggleParticipate,
    required TResult orElse(),
  }) {
    if (toggleParticipate != null) {
      return toggleParticipate(this);
    }
    return orElse();
  }
}

abstract class ToggleParticipateEventEvent extends EventEvent {
  const factory ToggleParticipateEventEvent() = _$ToggleParticipateEventEvent;
  const ToggleParticipateEventEvent._() : super._();
}

/// @nodoc
class _$EventStateTearOff {
  const _$EventStateTearOff();

  InitialEventState initial() {
    return const InitialEventState();
  }

  LoadingEventState loading() {
    return const LoadingEventState();
  }

  DataEventState data(
      {bool loading = false,
      required Event event,
      required List<Account> members,
      required bool participate}) {
    return DataEventState(
      loading: loading,
      event: event,
      members: members,
      participate: participate,
    );
  }

  NotFoundEventState notFound() {
    return const NotFoundEventState();
  }

  ErrorEventState error() {
    return const ErrorEventState();
  }
}

/// @nodoc
const $EventState = _$EventStateTearOff();

/// @nodoc
mixin _$EventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool loading, Event event, List<Account> members, bool participate)
        data,
    required TResult Function() notFound,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, Event event, List<Account> members, bool participate)?
        data,
    TResult Function()? notFound,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, Event event, List<Account> members, bool participate)?
        data,
    TResult Function()? notFound,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEventState value) initial,
    required TResult Function(LoadingEventState value) loading,
    required TResult Function(DataEventState value) data,
    required TResult Function(NotFoundEventState value) notFound,
    required TResult Function(ErrorEventState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialEventState value)? initial,
    TResult Function(LoadingEventState value)? loading,
    TResult Function(DataEventState value)? data,
    TResult Function(NotFoundEventState value)? notFound,
    TResult Function(ErrorEventState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEventState value)? initial,
    TResult Function(LoadingEventState value)? loading,
    TResult Function(DataEventState value)? data,
    TResult Function(NotFoundEventState value)? notFound,
    TResult Function(ErrorEventState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventStateCopyWith<$Res> {
  factory $EventStateCopyWith(
          EventState value, $Res Function(EventState) then) =
      _$EventStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventStateCopyWithImpl<$Res> implements $EventStateCopyWith<$Res> {
  _$EventStateCopyWithImpl(this._value, this._then);

  final EventState _value;
  // ignore: unused_field
  final $Res Function(EventState) _then;
}

/// @nodoc
abstract class $InitialEventStateCopyWith<$Res> {
  factory $InitialEventStateCopyWith(
          InitialEventState value, $Res Function(InitialEventState) then) =
      _$InitialEventStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialEventStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res>
    implements $InitialEventStateCopyWith<$Res> {
  _$InitialEventStateCopyWithImpl(
      InitialEventState _value, $Res Function(InitialEventState) _then)
      : super(_value, (v) => _then(v as InitialEventState));

  @override
  InitialEventState get _value => super._value as InitialEventState;
}

/// @nodoc

class _$InitialEventState extends InitialEventState {
  const _$InitialEventState() : super._();

  @override
  String toString() {
    return 'EventState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialEventState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool loading, Event event, List<Account> members, bool participate)
        data,
    required TResult Function() notFound,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, Event event, List<Account> members, bool participate)?
        data,
    TResult Function()? notFound,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, Event event, List<Account> members, bool participate)?
        data,
    TResult Function()? notFound,
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
    required TResult Function(InitialEventState value) initial,
    required TResult Function(LoadingEventState value) loading,
    required TResult Function(DataEventState value) data,
    required TResult Function(NotFoundEventState value) notFound,
    required TResult Function(ErrorEventState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialEventState value)? initial,
    TResult Function(LoadingEventState value)? loading,
    TResult Function(DataEventState value)? data,
    TResult Function(NotFoundEventState value)? notFound,
    TResult Function(ErrorEventState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEventState value)? initial,
    TResult Function(LoadingEventState value)? loading,
    TResult Function(DataEventState value)? data,
    TResult Function(NotFoundEventState value)? notFound,
    TResult Function(ErrorEventState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialEventState extends EventState {
  const factory InitialEventState() = _$InitialEventState;
  const InitialEventState._() : super._();
}

/// @nodoc
abstract class $LoadingEventStateCopyWith<$Res> {
  factory $LoadingEventStateCopyWith(
          LoadingEventState value, $Res Function(LoadingEventState) then) =
      _$LoadingEventStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingEventStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res>
    implements $LoadingEventStateCopyWith<$Res> {
  _$LoadingEventStateCopyWithImpl(
      LoadingEventState _value, $Res Function(LoadingEventState) _then)
      : super(_value, (v) => _then(v as LoadingEventState));

  @override
  LoadingEventState get _value => super._value as LoadingEventState;
}

/// @nodoc

class _$LoadingEventState extends LoadingEventState {
  const _$LoadingEventState() : super._();

  @override
  String toString() {
    return 'EventState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingEventState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool loading, Event event, List<Account> members, bool participate)
        data,
    required TResult Function() notFound,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, Event event, List<Account> members, bool participate)?
        data,
    TResult Function()? notFound,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, Event event, List<Account> members, bool participate)?
        data,
    TResult Function()? notFound,
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
    required TResult Function(InitialEventState value) initial,
    required TResult Function(LoadingEventState value) loading,
    required TResult Function(DataEventState value) data,
    required TResult Function(NotFoundEventState value) notFound,
    required TResult Function(ErrorEventState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialEventState value)? initial,
    TResult Function(LoadingEventState value)? loading,
    TResult Function(DataEventState value)? data,
    TResult Function(NotFoundEventState value)? notFound,
    TResult Function(ErrorEventState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEventState value)? initial,
    TResult Function(LoadingEventState value)? loading,
    TResult Function(DataEventState value)? data,
    TResult Function(NotFoundEventState value)? notFound,
    TResult Function(ErrorEventState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingEventState extends EventState {
  const factory LoadingEventState() = _$LoadingEventState;
  const LoadingEventState._() : super._();
}

/// @nodoc
abstract class $DataEventStateCopyWith<$Res> {
  factory $DataEventStateCopyWith(
          DataEventState value, $Res Function(DataEventState) then) =
      _$DataEventStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading, Event event, List<Account> members, bool participate});
}

/// @nodoc
class _$DataEventStateCopyWithImpl<$Res> extends _$EventStateCopyWithImpl<$Res>
    implements $DataEventStateCopyWith<$Res> {
  _$DataEventStateCopyWithImpl(
      DataEventState _value, $Res Function(DataEventState) _then)
      : super(_value, (v) => _then(v as DataEventState));

  @override
  DataEventState get _value => super._value as DataEventState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? event = freezed,
    Object? members = freezed,
    Object? participate = freezed,
  }) {
    return _then(DataEventState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      participate: participate == freezed
          ? _value.participate
          : participate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DataEventState extends DataEventState {
  const _$DataEventState(
      {this.loading = false,
      required this.event,
      required this.members,
      required this.participate})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final Event event;
  @override
  final List<Account> members;
  @override
  final bool participate;

  @override
  String toString() {
    return 'EventState.data(loading: $loading, event: $event, members: $members, participate: $participate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataEventState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.event, event) || other.event == event) &&
            const DeepCollectionEquality().equals(other.members, members) &&
            (identical(other.participate, participate) ||
                other.participate == participate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, event,
      const DeepCollectionEquality().hash(members), participate);

  @JsonKey(ignore: true)
  @override
  $DataEventStateCopyWith<DataEventState> get copyWith =>
      _$DataEventStateCopyWithImpl<DataEventState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool loading, Event event, List<Account> members, bool participate)
        data,
    required TResult Function() notFound,
    required TResult Function() error,
  }) {
    return data(this.loading, event, members, participate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, Event event, List<Account> members, bool participate)?
        data,
    TResult Function()? notFound,
    TResult Function()? error,
  }) {
    return data?.call(this.loading, event, members, participate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, Event event, List<Account> members, bool participate)?
        data,
    TResult Function()? notFound,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.loading, event, members, participate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEventState value) initial,
    required TResult Function(LoadingEventState value) loading,
    required TResult Function(DataEventState value) data,
    required TResult Function(NotFoundEventState value) notFound,
    required TResult Function(ErrorEventState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialEventState value)? initial,
    TResult Function(LoadingEventState value)? loading,
    TResult Function(DataEventState value)? data,
    TResult Function(NotFoundEventState value)? notFound,
    TResult Function(ErrorEventState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEventState value)? initial,
    TResult Function(LoadingEventState value)? loading,
    TResult Function(DataEventState value)? data,
    TResult Function(NotFoundEventState value)? notFound,
    TResult Function(ErrorEventState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataEventState extends EventState {
  const factory DataEventState(
      {bool loading,
      required Event event,
      required List<Account> members,
      required bool participate}) = _$DataEventState;
  const DataEventState._() : super._();

  bool get loading;
  Event get event;
  List<Account> get members;
  bool get participate;
  @JsonKey(ignore: true)
  $DataEventStateCopyWith<DataEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotFoundEventStateCopyWith<$Res> {
  factory $NotFoundEventStateCopyWith(
          NotFoundEventState value, $Res Function(NotFoundEventState) then) =
      _$NotFoundEventStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotFoundEventStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res>
    implements $NotFoundEventStateCopyWith<$Res> {
  _$NotFoundEventStateCopyWithImpl(
      NotFoundEventState _value, $Res Function(NotFoundEventState) _then)
      : super(_value, (v) => _then(v as NotFoundEventState));

  @override
  NotFoundEventState get _value => super._value as NotFoundEventState;
}

/// @nodoc

class _$NotFoundEventState extends NotFoundEventState {
  const _$NotFoundEventState() : super._();

  @override
  String toString() {
    return 'EventState.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotFoundEventState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool loading, Event event, List<Account> members, bool participate)
        data,
    required TResult Function() notFound,
    required TResult Function() error,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, Event event, List<Account> members, bool participate)?
        data,
    TResult Function()? notFound,
    TResult Function()? error,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, Event event, List<Account> members, bool participate)?
        data,
    TResult Function()? notFound,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEventState value) initial,
    required TResult Function(LoadingEventState value) loading,
    required TResult Function(DataEventState value) data,
    required TResult Function(NotFoundEventState value) notFound,
    required TResult Function(ErrorEventState value) error,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialEventState value)? initial,
    TResult Function(LoadingEventState value)? loading,
    TResult Function(DataEventState value)? data,
    TResult Function(NotFoundEventState value)? notFound,
    TResult Function(ErrorEventState value)? error,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEventState value)? initial,
    TResult Function(LoadingEventState value)? loading,
    TResult Function(DataEventState value)? data,
    TResult Function(NotFoundEventState value)? notFound,
    TResult Function(ErrorEventState value)? error,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundEventState extends EventState {
  const factory NotFoundEventState() = _$NotFoundEventState;
  const NotFoundEventState._() : super._();
}

/// @nodoc
abstract class $ErrorEventStateCopyWith<$Res> {
  factory $ErrorEventStateCopyWith(
          ErrorEventState value, $Res Function(ErrorEventState) then) =
      _$ErrorEventStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorEventStateCopyWithImpl<$Res> extends _$EventStateCopyWithImpl<$Res>
    implements $ErrorEventStateCopyWith<$Res> {
  _$ErrorEventStateCopyWithImpl(
      ErrorEventState _value, $Res Function(ErrorEventState) _then)
      : super(_value, (v) => _then(v as ErrorEventState));

  @override
  ErrorEventState get _value => super._value as ErrorEventState;
}

/// @nodoc

class _$ErrorEventState extends ErrorEventState {
  const _$ErrorEventState() : super._();

  @override
  String toString() {
    return 'EventState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ErrorEventState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool loading, Event event, List<Account> members, bool participate)
        data,
    required TResult Function() notFound,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, Event event, List<Account> members, bool participate)?
        data,
    TResult Function()? notFound,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, Event event, List<Account> members, bool participate)?
        data,
    TResult Function()? notFound,
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
    required TResult Function(InitialEventState value) initial,
    required TResult Function(LoadingEventState value) loading,
    required TResult Function(DataEventState value) data,
    required TResult Function(NotFoundEventState value) notFound,
    required TResult Function(ErrorEventState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialEventState value)? initial,
    TResult Function(LoadingEventState value)? loading,
    TResult Function(DataEventState value)? data,
    TResult Function(NotFoundEventState value)? notFound,
    TResult Function(ErrorEventState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEventState value)? initial,
    TResult Function(LoadingEventState value)? loading,
    TResult Function(DataEventState value)? data,
    TResult Function(NotFoundEventState value)? notFound,
    TResult Function(ErrorEventState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorEventState extends EventState {
  const factory ErrorEventState() = _$ErrorEventState;
  const ErrorEventState._() : super._();
}
