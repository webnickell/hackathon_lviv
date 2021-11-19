// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pagination_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaginationEventTearOff {
  const _$PaginationEventTearOff();

  LoadPaginationEvent load([bool refresh = false]) {
    return LoadPaginationEvent(
      refresh,
    );
  }
}

/// @nodoc
const $PaginationEvent = _$PaginationEventTearOff();

/// @nodoc
mixin _$PaginationEvent {
  bool get refresh => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool refresh)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPaginationEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPaginationEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPaginationEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationEventCopyWith<PaginationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationEventCopyWith<$Res> {
  factory $PaginationEventCopyWith(
          PaginationEvent value, $Res Function(PaginationEvent) then) =
      _$PaginationEventCopyWithImpl<$Res>;
  $Res call({bool refresh});
}

/// @nodoc
class _$PaginationEventCopyWithImpl<$Res>
    implements $PaginationEventCopyWith<$Res> {
  _$PaginationEventCopyWithImpl(this._value, this._then);

  final PaginationEvent _value;
  // ignore: unused_field
  final $Res Function(PaginationEvent) _then;

  @override
  $Res call({
    Object? refresh = freezed,
  }) {
    return _then(_value.copyWith(
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $LoadPaginationEventCopyWith<$Res>
    implements $PaginationEventCopyWith<$Res> {
  factory $LoadPaginationEventCopyWith(
          LoadPaginationEvent value, $Res Function(LoadPaginationEvent) then) =
      _$LoadPaginationEventCopyWithImpl<$Res>;
  @override
  $Res call({bool refresh});
}

/// @nodoc
class _$LoadPaginationEventCopyWithImpl<$Res>
    extends _$PaginationEventCopyWithImpl<$Res>
    implements $LoadPaginationEventCopyWith<$Res> {
  _$LoadPaginationEventCopyWithImpl(
      LoadPaginationEvent _value, $Res Function(LoadPaginationEvent) _then)
      : super(_value, (v) => _then(v as LoadPaginationEvent));

  @override
  LoadPaginationEvent get _value => super._value as LoadPaginationEvent;

  @override
  $Res call({
    Object? refresh = freezed,
  }) {
    return _then(LoadPaginationEvent(
      refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadPaginationEvent extends LoadPaginationEvent {
  const _$LoadPaginationEvent([this.refresh = false]) : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool refresh;

  @override
  String toString() {
    return 'PaginationEvent.load(refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadPaginationEvent &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refresh);

  @JsonKey(ignore: true)
  @override
  $LoadPaginationEventCopyWith<LoadPaginationEvent> get copyWith =>
      _$LoadPaginationEventCopyWithImpl<LoadPaginationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh) load,
  }) {
    return load(refresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool refresh)? load,
  }) {
    return load?.call(refresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(refresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPaginationEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPaginationEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPaginationEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadPaginationEvent extends PaginationEvent {
  const factory LoadPaginationEvent([bool refresh]) = _$LoadPaginationEvent;
  const LoadPaginationEvent._() : super._();

  @override
  bool get refresh;
  @override
  @JsonKey(ignore: true)
  $LoadPaginationEventCopyWith<LoadPaginationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PaginationStateTearOff {
  const _$PaginationStateTearOff();

  InitialPaginationState<T> initial<T>() {
    return InitialPaginationState<T>();
  }

  LoadingPaginationState<T> loading<T>() {
    return LoadingPaginationState<T>();
  }

  DataPaginationState<T> data<T>(
      {bool loading = false,
      required List<T> data,
      Object? cursor,
      bool loadedAllItems = false,
      NetworkError? error}) {
    return DataPaginationState<T>(
      loading: loading,
      data: data,
      cursor: cursor,
      loadedAllItems: loadedAllItems,
      error: error,
    );
  }

  ErrorPaginationState<T> error<T>({required NetworkError error}) {
    return ErrorPaginationState<T>(
      error: error,
    );
  }
}

/// @nodoc
const $PaginationState = _$PaginationStateTearOff();

/// @nodoc
mixin _$PaginationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)
        data,
    required TResult Function(NetworkError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPaginationState<T> value) initial,
    required TResult Function(LoadingPaginationState<T> value) loading,
    required TResult Function(DataPaginationState<T> value) data,
    required TResult Function(ErrorPaginationState<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialPaginationState<T> value)? initial,
    TResult Function(LoadingPaginationState<T> value)? loading,
    TResult Function(DataPaginationState<T> value)? data,
    TResult Function(ErrorPaginationState<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPaginationState<T> value)? initial,
    TResult Function(LoadingPaginationState<T> value)? loading,
    TResult Function(DataPaginationState<T> value)? data,
    TResult Function(ErrorPaginationState<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationStateCopyWith<T, $Res> {
  factory $PaginationStateCopyWith(
          PaginationState<T> value, $Res Function(PaginationState<T>) then) =
      _$PaginationStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$PaginationStateCopyWithImpl<T, $Res>
    implements $PaginationStateCopyWith<T, $Res> {
  _$PaginationStateCopyWithImpl(this._value, this._then);

  final PaginationState<T> _value;
  // ignore: unused_field
  final $Res Function(PaginationState<T>) _then;
}

/// @nodoc
abstract class $InitialPaginationStateCopyWith<T, $Res> {
  factory $InitialPaginationStateCopyWith(InitialPaginationState<T> value,
          $Res Function(InitialPaginationState<T>) then) =
      _$InitialPaginationStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$InitialPaginationStateCopyWithImpl<T, $Res>
    extends _$PaginationStateCopyWithImpl<T, $Res>
    implements $InitialPaginationStateCopyWith<T, $Res> {
  _$InitialPaginationStateCopyWithImpl(InitialPaginationState<T> _value,
      $Res Function(InitialPaginationState<T>) _then)
      : super(_value, (v) => _then(v as InitialPaginationState<T>));

  @override
  InitialPaginationState<T> get _value =>
      super._value as InitialPaginationState<T>;
}

/// @nodoc

class _$InitialPaginationState<T> extends InitialPaginationState<T> {
  const _$InitialPaginationState() : super._();

  @override
  String toString() {
    return 'PaginationState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitialPaginationState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)
        data,
    required TResult Function(NetworkError error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
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
    required TResult Function(InitialPaginationState<T> value) initial,
    required TResult Function(LoadingPaginationState<T> value) loading,
    required TResult Function(DataPaginationState<T> value) data,
    required TResult Function(ErrorPaginationState<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialPaginationState<T> value)? initial,
    TResult Function(LoadingPaginationState<T> value)? loading,
    TResult Function(DataPaginationState<T> value)? data,
    TResult Function(ErrorPaginationState<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPaginationState<T> value)? initial,
    TResult Function(LoadingPaginationState<T> value)? loading,
    TResult Function(DataPaginationState<T> value)? data,
    TResult Function(ErrorPaginationState<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialPaginationState<T> extends PaginationState<T> {
  const factory InitialPaginationState() = _$InitialPaginationState<T>;
  const InitialPaginationState._() : super._();
}

/// @nodoc
abstract class $LoadingPaginationStateCopyWith<T, $Res> {
  factory $LoadingPaginationStateCopyWith(LoadingPaginationState<T> value,
          $Res Function(LoadingPaginationState<T>) then) =
      _$LoadingPaginationStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingPaginationStateCopyWithImpl<T, $Res>
    extends _$PaginationStateCopyWithImpl<T, $Res>
    implements $LoadingPaginationStateCopyWith<T, $Res> {
  _$LoadingPaginationStateCopyWithImpl(LoadingPaginationState<T> _value,
      $Res Function(LoadingPaginationState<T>) _then)
      : super(_value, (v) => _then(v as LoadingPaginationState<T>));

  @override
  LoadingPaginationState<T> get _value =>
      super._value as LoadingPaginationState<T>;
}

/// @nodoc

class _$LoadingPaginationState<T> extends LoadingPaginationState<T> {
  const _$LoadingPaginationState() : super._();

  @override
  String toString() {
    return 'PaginationState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingPaginationState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)
        data,
    required TResult Function(NetworkError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
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
    required TResult Function(InitialPaginationState<T> value) initial,
    required TResult Function(LoadingPaginationState<T> value) loading,
    required TResult Function(DataPaginationState<T> value) data,
    required TResult Function(ErrorPaginationState<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialPaginationState<T> value)? initial,
    TResult Function(LoadingPaginationState<T> value)? loading,
    TResult Function(DataPaginationState<T> value)? data,
    TResult Function(ErrorPaginationState<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPaginationState<T> value)? initial,
    TResult Function(LoadingPaginationState<T> value)? loading,
    TResult Function(DataPaginationState<T> value)? data,
    TResult Function(ErrorPaginationState<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingPaginationState<T> extends PaginationState<T> {
  const factory LoadingPaginationState() = _$LoadingPaginationState<T>;
  const LoadingPaginationState._() : super._();
}

/// @nodoc
abstract class $DataPaginationStateCopyWith<T, $Res> {
  factory $DataPaginationStateCopyWith(DataPaginationState<T> value,
          $Res Function(DataPaginationState<T>) then) =
      _$DataPaginationStateCopyWithImpl<T, $Res>;
  $Res call(
      {bool loading,
      List<T> data,
      Object? cursor,
      bool loadedAllItems,
      NetworkError? error});
}

/// @nodoc
class _$DataPaginationStateCopyWithImpl<T, $Res>
    extends _$PaginationStateCopyWithImpl<T, $Res>
    implements $DataPaginationStateCopyWith<T, $Res> {
  _$DataPaginationStateCopyWithImpl(DataPaginationState<T> _value,
      $Res Function(DataPaginationState<T>) _then)
      : super(_value, (v) => _then(v as DataPaginationState<T>));

  @override
  DataPaginationState<T> get _value => super._value as DataPaginationState<T>;

  @override
  $Res call({
    Object? loading = freezed,
    Object? data = freezed,
    Object? cursor = freezed,
    Object? loadedAllItems = freezed,
    Object? error = freezed,
  }) {
    return _then(DataPaginationState<T>(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      cursor: cursor == freezed ? _value.cursor : cursor,
      loadedAllItems: loadedAllItems == freezed
          ? _value.loadedAllItems
          : loadedAllItems // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError?,
    ));
  }
}

/// @nodoc

class _$DataPaginationState<T> extends DataPaginationState<T> {
  const _$DataPaginationState(
      {this.loading = false,
      required this.data,
      this.cursor,
      this.loadedAllItems = false,
      this.error})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final List<T> data;
  @override
  final Object? cursor;
  @JsonKey(defaultValue: false)
  @override
  final bool loadedAllItems;
  @override
  final NetworkError? error;

  @override
  String toString() {
    return 'PaginationState<$T>.data(loading: $loading, data: $data, cursor: $cursor, loadedAllItems: $loadedAllItems, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataPaginationState<T> &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.cursor, cursor) &&
            (identical(other.loadedAllItems, loadedAllItems) ||
                other.loadedAllItems == loadedAllItems) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(cursor),
      loadedAllItems,
      error);

  @JsonKey(ignore: true)
  @override
  $DataPaginationStateCopyWith<T, DataPaginationState<T>> get copyWith =>
      _$DataPaginationStateCopyWithImpl<T, DataPaginationState<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)
        data,
    required TResult Function(NetworkError error) error,
  }) {
    return data(this.loading, this.data, cursor, loadedAllItems, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
  }) {
    return data?.call(
        this.loading, this.data, cursor, loadedAllItems, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.loading, this.data, cursor, loadedAllItems, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPaginationState<T> value) initial,
    required TResult Function(LoadingPaginationState<T> value) loading,
    required TResult Function(DataPaginationState<T> value) data,
    required TResult Function(ErrorPaginationState<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialPaginationState<T> value)? initial,
    TResult Function(LoadingPaginationState<T> value)? loading,
    TResult Function(DataPaginationState<T> value)? data,
    TResult Function(ErrorPaginationState<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPaginationState<T> value)? initial,
    TResult Function(LoadingPaginationState<T> value)? loading,
    TResult Function(DataPaginationState<T> value)? data,
    TResult Function(ErrorPaginationState<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataPaginationState<T> extends PaginationState<T> {
  const factory DataPaginationState(
      {bool loading,
      required List<T> data,
      Object? cursor,
      bool loadedAllItems,
      NetworkError? error}) = _$DataPaginationState<T>;
  const DataPaginationState._() : super._();

  bool get loading;
  List<T> get data;
  Object? get cursor;
  bool get loadedAllItems;
  NetworkError? get error;
  @JsonKey(ignore: true)
  $DataPaginationStateCopyWith<T, DataPaginationState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorPaginationStateCopyWith<T, $Res> {
  factory $ErrorPaginationStateCopyWith(ErrorPaginationState<T> value,
          $Res Function(ErrorPaginationState<T>) then) =
      _$ErrorPaginationStateCopyWithImpl<T, $Res>;
  $Res call({NetworkError error});
}

/// @nodoc
class _$ErrorPaginationStateCopyWithImpl<T, $Res>
    extends _$PaginationStateCopyWithImpl<T, $Res>
    implements $ErrorPaginationStateCopyWith<T, $Res> {
  _$ErrorPaginationStateCopyWithImpl(ErrorPaginationState<T> _value,
      $Res Function(ErrorPaginationState<T>) _then)
      : super(_value, (v) => _then(v as ErrorPaginationState<T>));

  @override
  ErrorPaginationState<T> get _value => super._value as ErrorPaginationState<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ErrorPaginationState<T>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError,
    ));
  }
}

/// @nodoc

class _$ErrorPaginationState<T> extends ErrorPaginationState<T> {
  const _$ErrorPaginationState({required this.error}) : super._();

  @override
  final NetworkError error;

  @override
  String toString() {
    return 'PaginationState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorPaginationState<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  $ErrorPaginationStateCopyWith<T, ErrorPaginationState<T>> get copyWith =>
      _$ErrorPaginationStateCopyWithImpl<T, ErrorPaginationState<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)
        data,
    required TResult Function(NetworkError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool loading, List<T> data, Object? cursor,
            bool loadedAllItems, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPaginationState<T> value) initial,
    required TResult Function(LoadingPaginationState<T> value) loading,
    required TResult Function(DataPaginationState<T> value) data,
    required TResult Function(ErrorPaginationState<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialPaginationState<T> value)? initial,
    TResult Function(LoadingPaginationState<T> value)? loading,
    TResult Function(DataPaginationState<T> value)? data,
    TResult Function(ErrorPaginationState<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPaginationState<T> value)? initial,
    TResult Function(LoadingPaginationState<T> value)? loading,
    TResult Function(DataPaginationState<T> value)? data,
    TResult Function(ErrorPaginationState<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorPaginationState<T> extends PaginationState<T> {
  const factory ErrorPaginationState({required NetworkError error}) =
      _$ErrorPaginationState<T>;
  const ErrorPaginationState._() : super._();

  NetworkError get error;
  @JsonKey(ignore: true)
  $ErrorPaginationStateCopyWith<T, ErrorPaginationState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
