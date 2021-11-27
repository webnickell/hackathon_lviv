// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapEventTearOff {
  const _$MapEventTearOff();

  LoadByCoordsMapEvent loadByCoords({required Coords coords}) {
    return LoadByCoordsMapEvent(
      coords: coords,
    );
  }

  LoadByMyLocationMapEvent loadByMyLocation() {
    return const LoadByMyLocationMapEvent();
  }

  LoadMoreMapEvent loadMoreLocation() {
    return const LoadMoreMapEvent();
  }
}

/// @nodoc
const $MapEvent = _$MapEventTearOff();

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coords coords) loadByCoords,
    required TResult Function() loadByMyLocation,
    required TResult Function() loadMoreLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Coords coords)? loadByCoords,
    TResult Function()? loadByMyLocation,
    TResult Function()? loadMoreLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coords coords)? loadByCoords,
    TResult Function()? loadByMyLocation,
    TResult Function()? loadMoreLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadByCoordsMapEvent value) loadByCoords,
    required TResult Function(LoadByMyLocationMapEvent value) loadByMyLocation,
    required TResult Function(LoadMoreMapEvent value) loadMoreLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadByCoordsMapEvent value)? loadByCoords,
    TResult Function(LoadByMyLocationMapEvent value)? loadByMyLocation,
    TResult Function(LoadMoreMapEvent value)? loadMoreLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadByCoordsMapEvent value)? loadByCoords,
    TResult Function(LoadByMyLocationMapEvent value)? loadByMyLocation,
    TResult Function(LoadMoreMapEvent value)? loadMoreLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res> implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  final MapEvent _value;
  // ignore: unused_field
  final $Res Function(MapEvent) _then;
}

/// @nodoc
abstract class $LoadByCoordsMapEventCopyWith<$Res> {
  factory $LoadByCoordsMapEventCopyWith(LoadByCoordsMapEvent value,
          $Res Function(LoadByCoordsMapEvent) then) =
      _$LoadByCoordsMapEventCopyWithImpl<$Res>;
  $Res call({Coords coords});
}

/// @nodoc
class _$LoadByCoordsMapEventCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res>
    implements $LoadByCoordsMapEventCopyWith<$Res> {
  _$LoadByCoordsMapEventCopyWithImpl(
      LoadByCoordsMapEvent _value, $Res Function(LoadByCoordsMapEvent) _then)
      : super(_value, (v) => _then(v as LoadByCoordsMapEvent));

  @override
  LoadByCoordsMapEvent get _value => super._value as LoadByCoordsMapEvent;

  @override
  $Res call({
    Object? coords = freezed,
  }) {
    return _then(LoadByCoordsMapEvent(
      coords: coords == freezed
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
    ));
  }
}

/// @nodoc

class _$LoadByCoordsMapEvent extends LoadByCoordsMapEvent {
  const _$LoadByCoordsMapEvent({required this.coords}) : super._();

  @override
  final Coords coords;

  @override
  String toString() {
    return 'MapEvent.loadByCoords(coords: $coords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadByCoordsMapEvent &&
            (identical(other.coords, coords) || other.coords == coords));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coords);

  @JsonKey(ignore: true)
  @override
  $LoadByCoordsMapEventCopyWith<LoadByCoordsMapEvent> get copyWith =>
      _$LoadByCoordsMapEventCopyWithImpl<LoadByCoordsMapEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coords coords) loadByCoords,
    required TResult Function() loadByMyLocation,
    required TResult Function() loadMoreLocation,
  }) {
    return loadByCoords(coords);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Coords coords)? loadByCoords,
    TResult Function()? loadByMyLocation,
    TResult Function()? loadMoreLocation,
  }) {
    return loadByCoords?.call(coords);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coords coords)? loadByCoords,
    TResult Function()? loadByMyLocation,
    TResult Function()? loadMoreLocation,
    required TResult orElse(),
  }) {
    if (loadByCoords != null) {
      return loadByCoords(coords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadByCoordsMapEvent value) loadByCoords,
    required TResult Function(LoadByMyLocationMapEvent value) loadByMyLocation,
    required TResult Function(LoadMoreMapEvent value) loadMoreLocation,
  }) {
    return loadByCoords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadByCoordsMapEvent value)? loadByCoords,
    TResult Function(LoadByMyLocationMapEvent value)? loadByMyLocation,
    TResult Function(LoadMoreMapEvent value)? loadMoreLocation,
  }) {
    return loadByCoords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadByCoordsMapEvent value)? loadByCoords,
    TResult Function(LoadByMyLocationMapEvent value)? loadByMyLocation,
    TResult Function(LoadMoreMapEvent value)? loadMoreLocation,
    required TResult orElse(),
  }) {
    if (loadByCoords != null) {
      return loadByCoords(this);
    }
    return orElse();
  }
}

abstract class LoadByCoordsMapEvent extends MapEvent {
  const factory LoadByCoordsMapEvent({required Coords coords}) =
      _$LoadByCoordsMapEvent;
  const LoadByCoordsMapEvent._() : super._();

  Coords get coords;
  @JsonKey(ignore: true)
  $LoadByCoordsMapEventCopyWith<LoadByCoordsMapEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadByMyLocationMapEventCopyWith<$Res> {
  factory $LoadByMyLocationMapEventCopyWith(LoadByMyLocationMapEvent value,
          $Res Function(LoadByMyLocationMapEvent) then) =
      _$LoadByMyLocationMapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadByMyLocationMapEventCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res>
    implements $LoadByMyLocationMapEventCopyWith<$Res> {
  _$LoadByMyLocationMapEventCopyWithImpl(LoadByMyLocationMapEvent _value,
      $Res Function(LoadByMyLocationMapEvent) _then)
      : super(_value, (v) => _then(v as LoadByMyLocationMapEvent));

  @override
  LoadByMyLocationMapEvent get _value =>
      super._value as LoadByMyLocationMapEvent;
}

/// @nodoc

class _$LoadByMyLocationMapEvent extends LoadByMyLocationMapEvent {
  const _$LoadByMyLocationMapEvent() : super._();

  @override
  String toString() {
    return 'MapEvent.loadByMyLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadByMyLocationMapEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coords coords) loadByCoords,
    required TResult Function() loadByMyLocation,
    required TResult Function() loadMoreLocation,
  }) {
    return loadByMyLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Coords coords)? loadByCoords,
    TResult Function()? loadByMyLocation,
    TResult Function()? loadMoreLocation,
  }) {
    return loadByMyLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coords coords)? loadByCoords,
    TResult Function()? loadByMyLocation,
    TResult Function()? loadMoreLocation,
    required TResult orElse(),
  }) {
    if (loadByMyLocation != null) {
      return loadByMyLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadByCoordsMapEvent value) loadByCoords,
    required TResult Function(LoadByMyLocationMapEvent value) loadByMyLocation,
    required TResult Function(LoadMoreMapEvent value) loadMoreLocation,
  }) {
    return loadByMyLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadByCoordsMapEvent value)? loadByCoords,
    TResult Function(LoadByMyLocationMapEvent value)? loadByMyLocation,
    TResult Function(LoadMoreMapEvent value)? loadMoreLocation,
  }) {
    return loadByMyLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadByCoordsMapEvent value)? loadByCoords,
    TResult Function(LoadByMyLocationMapEvent value)? loadByMyLocation,
    TResult Function(LoadMoreMapEvent value)? loadMoreLocation,
    required TResult orElse(),
  }) {
    if (loadByMyLocation != null) {
      return loadByMyLocation(this);
    }
    return orElse();
  }
}

abstract class LoadByMyLocationMapEvent extends MapEvent {
  const factory LoadByMyLocationMapEvent() = _$LoadByMyLocationMapEvent;
  const LoadByMyLocationMapEvent._() : super._();
}

/// @nodoc
abstract class $LoadMoreMapEventCopyWith<$Res> {
  factory $LoadMoreMapEventCopyWith(
          LoadMoreMapEvent value, $Res Function(LoadMoreMapEvent) then) =
      _$LoadMoreMapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadMoreMapEventCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $LoadMoreMapEventCopyWith<$Res> {
  _$LoadMoreMapEventCopyWithImpl(
      LoadMoreMapEvent _value, $Res Function(LoadMoreMapEvent) _then)
      : super(_value, (v) => _then(v as LoadMoreMapEvent));

  @override
  LoadMoreMapEvent get _value => super._value as LoadMoreMapEvent;
}

/// @nodoc

class _$LoadMoreMapEvent extends LoadMoreMapEvent {
  const _$LoadMoreMapEvent() : super._();

  @override
  String toString() {
    return 'MapEvent.loadMoreLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadMoreMapEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coords coords) loadByCoords,
    required TResult Function() loadByMyLocation,
    required TResult Function() loadMoreLocation,
  }) {
    return loadMoreLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Coords coords)? loadByCoords,
    TResult Function()? loadByMyLocation,
    TResult Function()? loadMoreLocation,
  }) {
    return loadMoreLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coords coords)? loadByCoords,
    TResult Function()? loadByMyLocation,
    TResult Function()? loadMoreLocation,
    required TResult orElse(),
  }) {
    if (loadMoreLocation != null) {
      return loadMoreLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadByCoordsMapEvent value) loadByCoords,
    required TResult Function(LoadByMyLocationMapEvent value) loadByMyLocation,
    required TResult Function(LoadMoreMapEvent value) loadMoreLocation,
  }) {
    return loadMoreLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadByCoordsMapEvent value)? loadByCoords,
    TResult Function(LoadByMyLocationMapEvent value)? loadByMyLocation,
    TResult Function(LoadMoreMapEvent value)? loadMoreLocation,
  }) {
    return loadMoreLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadByCoordsMapEvent value)? loadByCoords,
    TResult Function(LoadByMyLocationMapEvent value)? loadByMyLocation,
    TResult Function(LoadMoreMapEvent value)? loadMoreLocation,
    required TResult orElse(),
  }) {
    if (loadMoreLocation != null) {
      return loadMoreLocation(this);
    }
    return orElse();
  }
}

abstract class LoadMoreMapEvent extends MapEvent {
  const factory LoadMoreMapEvent() = _$LoadMoreMapEvent;
  const LoadMoreMapEvent._() : super._();
}

/// @nodoc
class _$MapStateTearOff {
  const _$MapStateTearOff();

  InitialMapState initial() {
    return const InitialMapState();
  }

  LoadingMapState loading() {
    return const LoadingMapState();
  }

  DataMapState data(
      {bool loading = false,
      required List<ShortEvent> events,
      required Coords centerLocation,
      Object? cursor,
      bool loadedAllItems = false}) {
    return DataMapState(
      loading: loading,
      events: events,
      centerLocation: centerLocation,
      cursor: cursor,
      loadedAllItems: loadedAllItems,
    );
  }

  ErrorMapState error() {
    return const ErrorMapState();
  }
}

/// @nodoc
const $MapState = _$MapStateTearOff();

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)
        data,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)?
        data,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)?
        data,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMapState value) initial,
    required TResult Function(LoadingMapState value) loading,
    required TResult Function(DataMapState value) data,
    required TResult Function(ErrorMapState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialMapState value)? initial,
    TResult Function(LoadingMapState value)? loading,
    TResult Function(DataMapState value)? data,
    TResult Function(ErrorMapState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMapState value)? initial,
    TResult Function(LoadingMapState value)? loading,
    TResult Function(DataMapState value)? data,
    TResult Function(ErrorMapState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;
}

/// @nodoc
abstract class $InitialMapStateCopyWith<$Res> {
  factory $InitialMapStateCopyWith(
          InitialMapState value, $Res Function(InitialMapState) then) =
      _$InitialMapStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialMapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements $InitialMapStateCopyWith<$Res> {
  _$InitialMapStateCopyWithImpl(
      InitialMapState _value, $Res Function(InitialMapState) _then)
      : super(_value, (v) => _then(v as InitialMapState));

  @override
  InitialMapState get _value => super._value as InitialMapState;
}

/// @nodoc

class _$InitialMapState extends InitialMapState {
  const _$InitialMapState() : super._();

  @override
  String toString() {
    return 'MapState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialMapState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)
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
    TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)?
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
    TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)?
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
    required TResult Function(InitialMapState value) initial,
    required TResult Function(LoadingMapState value) loading,
    required TResult Function(DataMapState value) data,
    required TResult Function(ErrorMapState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialMapState value)? initial,
    TResult Function(LoadingMapState value)? loading,
    TResult Function(DataMapState value)? data,
    TResult Function(ErrorMapState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMapState value)? initial,
    TResult Function(LoadingMapState value)? loading,
    TResult Function(DataMapState value)? data,
    TResult Function(ErrorMapState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialMapState extends MapState {
  const factory InitialMapState() = _$InitialMapState;
  const InitialMapState._() : super._();
}

/// @nodoc
abstract class $LoadingMapStateCopyWith<$Res> {
  factory $LoadingMapStateCopyWith(
          LoadingMapState value, $Res Function(LoadingMapState) then) =
      _$LoadingMapStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingMapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements $LoadingMapStateCopyWith<$Res> {
  _$LoadingMapStateCopyWithImpl(
      LoadingMapState _value, $Res Function(LoadingMapState) _then)
      : super(_value, (v) => _then(v as LoadingMapState));

  @override
  LoadingMapState get _value => super._value as LoadingMapState;
}

/// @nodoc

class _$LoadingMapState extends LoadingMapState {
  const _$LoadingMapState() : super._();

  @override
  String toString() {
    return 'MapState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingMapState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)
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
    TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)?
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
    TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)?
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
    required TResult Function(InitialMapState value) initial,
    required TResult Function(LoadingMapState value) loading,
    required TResult Function(DataMapState value) data,
    required TResult Function(ErrorMapState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialMapState value)? initial,
    TResult Function(LoadingMapState value)? loading,
    TResult Function(DataMapState value)? data,
    TResult Function(ErrorMapState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMapState value)? initial,
    TResult Function(LoadingMapState value)? loading,
    TResult Function(DataMapState value)? data,
    TResult Function(ErrorMapState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMapState extends MapState {
  const factory LoadingMapState() = _$LoadingMapState;
  const LoadingMapState._() : super._();
}

/// @nodoc
abstract class $DataMapStateCopyWith<$Res> {
  factory $DataMapStateCopyWith(
          DataMapState value, $Res Function(DataMapState) then) =
      _$DataMapStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      List<ShortEvent> events,
      Coords centerLocation,
      Object? cursor,
      bool loadedAllItems});
}

/// @nodoc
class _$DataMapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements $DataMapStateCopyWith<$Res> {
  _$DataMapStateCopyWithImpl(
      DataMapState _value, $Res Function(DataMapState) _then)
      : super(_value, (v) => _then(v as DataMapState));

  @override
  DataMapState get _value => super._value as DataMapState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? events = freezed,
    Object? centerLocation = freezed,
    Object? cursor = freezed,
    Object? loadedAllItems = freezed,
  }) {
    return _then(DataMapState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<ShortEvent>,
      centerLocation: centerLocation == freezed
          ? _value.centerLocation
          : centerLocation // ignore: cast_nullable_to_non_nullable
              as Coords,
      cursor: cursor == freezed ? _value.cursor : cursor,
      loadedAllItems: loadedAllItems == freezed
          ? _value.loadedAllItems
          : loadedAllItems // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DataMapState extends DataMapState {
  const _$DataMapState(
      {this.loading = false,
      required this.events,
      required this.centerLocation,
      this.cursor,
      this.loadedAllItems = false})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final List<ShortEvent> events;
  @override
  final Coords centerLocation;
  @override
  final Object? cursor;
  @JsonKey(defaultValue: false)
  @override
  final bool loadedAllItems;

  @override
  String toString() {
    return 'MapState.data(loading: $loading, events: $events, centerLocation: $centerLocation, cursor: $cursor, loadedAllItems: $loadedAllItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataMapState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other.events, events) &&
            (identical(other.centerLocation, centerLocation) ||
                other.centerLocation == centerLocation) &&
            const DeepCollectionEquality().equals(other.cursor, cursor) &&
            (identical(other.loadedAllItems, loadedAllItems) ||
                other.loadedAllItems == loadedAllItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      const DeepCollectionEquality().hash(events),
      centerLocation,
      const DeepCollectionEquality().hash(cursor),
      loadedAllItems);

  @JsonKey(ignore: true)
  @override
  $DataMapStateCopyWith<DataMapState> get copyWith =>
      _$DataMapStateCopyWithImpl<DataMapState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)
        data,
    required TResult Function() error,
  }) {
    return data(this.loading, events, centerLocation, cursor, loadedAllItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)?
        data,
    TResult Function()? error,
  }) {
    return data?.call(
        this.loading, events, centerLocation, cursor, loadedAllItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)?
        data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.loading, events, centerLocation, cursor, loadedAllItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMapState value) initial,
    required TResult Function(LoadingMapState value) loading,
    required TResult Function(DataMapState value) data,
    required TResult Function(ErrorMapState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialMapState value)? initial,
    TResult Function(LoadingMapState value)? loading,
    TResult Function(DataMapState value)? data,
    TResult Function(ErrorMapState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMapState value)? initial,
    TResult Function(LoadingMapState value)? loading,
    TResult Function(DataMapState value)? data,
    TResult Function(ErrorMapState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataMapState extends MapState {
  const factory DataMapState(
      {bool loading,
      required List<ShortEvent> events,
      required Coords centerLocation,
      Object? cursor,
      bool loadedAllItems}) = _$DataMapState;
  const DataMapState._() : super._();

  bool get loading;
  List<ShortEvent> get events;
  Coords get centerLocation;
  Object? get cursor;
  bool get loadedAllItems;
  @JsonKey(ignore: true)
  $DataMapStateCopyWith<DataMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorMapStateCopyWith<$Res> {
  factory $ErrorMapStateCopyWith(
          ErrorMapState value, $Res Function(ErrorMapState) then) =
      _$ErrorMapStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorMapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements $ErrorMapStateCopyWith<$Res> {
  _$ErrorMapStateCopyWithImpl(
      ErrorMapState _value, $Res Function(ErrorMapState) _then)
      : super(_value, (v) => _then(v as ErrorMapState));

  @override
  ErrorMapState get _value => super._value as ErrorMapState;
}

/// @nodoc

class _$ErrorMapState extends ErrorMapState {
  const _$ErrorMapState() : super._();

  @override
  String toString() {
    return 'MapState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ErrorMapState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)
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
    TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)?
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
    TResult Function(bool loading, List<ShortEvent> events,
            Coords centerLocation, Object? cursor, bool loadedAllItems)?
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
    required TResult Function(InitialMapState value) initial,
    required TResult Function(LoadingMapState value) loading,
    required TResult Function(DataMapState value) data,
    required TResult Function(ErrorMapState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialMapState value)? initial,
    TResult Function(LoadingMapState value)? loading,
    TResult Function(DataMapState value)? data,
    TResult Function(ErrorMapState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMapState value)? initial,
    TResult Function(LoadingMapState value)? loading,
    TResult Function(DataMapState value)? data,
    TResult Function(ErrorMapState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMapState extends MapState {
  const factory ErrorMapState() = _$ErrorMapState;
  const ErrorMapState._() : super._();
}
