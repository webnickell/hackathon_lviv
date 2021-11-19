// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'progress_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProgressEventTearOff {
  const _$ProgressEventTearOff();

  LoadProgressEvent load([bool refresh = false]) {
    return LoadProgressEvent(
      refresh,
    );
  }
}

/// @nodoc
const $ProgressEvent = _$ProgressEventTearOff();

/// @nodoc
mixin _$ProgressEvent {
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
    required TResult Function(LoadProgressEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadProgressEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProgressEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgressEventCopyWith<ProgressEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressEventCopyWith<$Res> {
  factory $ProgressEventCopyWith(
          ProgressEvent value, $Res Function(ProgressEvent) then) =
      _$ProgressEventCopyWithImpl<$Res>;
  $Res call({bool refresh});
}

/// @nodoc
class _$ProgressEventCopyWithImpl<$Res>
    implements $ProgressEventCopyWith<$Res> {
  _$ProgressEventCopyWithImpl(this._value, this._then);

  final ProgressEvent _value;
  // ignore: unused_field
  final $Res Function(ProgressEvent) _then;

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
abstract class $LoadProgressEventCopyWith<$Res>
    implements $ProgressEventCopyWith<$Res> {
  factory $LoadProgressEventCopyWith(
          LoadProgressEvent value, $Res Function(LoadProgressEvent) then) =
      _$LoadProgressEventCopyWithImpl<$Res>;
  @override
  $Res call({bool refresh});
}

/// @nodoc
class _$LoadProgressEventCopyWithImpl<$Res>
    extends _$ProgressEventCopyWithImpl<$Res>
    implements $LoadProgressEventCopyWith<$Res> {
  _$LoadProgressEventCopyWithImpl(
      LoadProgressEvent _value, $Res Function(LoadProgressEvent) _then)
      : super(_value, (v) => _then(v as LoadProgressEvent));

  @override
  LoadProgressEvent get _value => super._value as LoadProgressEvent;

  @override
  $Res call({
    Object? refresh = freezed,
  }) {
    return _then(LoadProgressEvent(
      refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadProgressEvent extends LoadProgressEvent
    with DiagnosticableTreeMixin {
  const _$LoadProgressEvent([this.refresh = false]) : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool refresh;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgressEvent.load(refresh: $refresh)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProgressEvent.load'))
      ..add(DiagnosticsProperty('refresh', refresh));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadProgressEvent &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refresh);

  @JsonKey(ignore: true)
  @override
  $LoadProgressEventCopyWith<LoadProgressEvent> get copyWith =>
      _$LoadProgressEventCopyWithImpl<LoadProgressEvent>(this, _$identity);

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
    required TResult Function(LoadProgressEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadProgressEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProgressEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadProgressEvent extends ProgressEvent {
  const factory LoadProgressEvent([bool refresh]) = _$LoadProgressEvent;
  const LoadProgressEvent._() : super._();

  @override
  bool get refresh;
  @override
  @JsonKey(ignore: true)
  $LoadProgressEventCopyWith<LoadProgressEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProgressStateTearOff {
  const _$ProgressStateTearOff();

  InitialProgressState initial() {
    return const InitialProgressState();
  }

  LoadingProgressState loading() {
    return const LoadingProgressState();
  }

  DataProgressState data(
      {bool loading = false,
      required List<Week> data,
      Object? cursor,
      NetworkError? error}) {
    return DataProgressState(
      loading: loading,
      data: data,
      cursor: cursor,
      error: error,
    );
  }

  ErrorProgressState error({required NetworkError error}) {
    return ErrorProgressState(
      error: error,
    );
  }
}

/// @nodoc
const $ProgressState = _$ProgressStateTearOff();

/// @nodoc
mixin _$ProgressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)
        data,
    required TResult Function(NetworkError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProgressState value) initial,
    required TResult Function(LoadingProgressState value) loading,
    required TResult Function(DataProgressState value) data,
    required TResult Function(ErrorProgressState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialProgressState value)? initial,
    TResult Function(LoadingProgressState value)? loading,
    TResult Function(DataProgressState value)? data,
    TResult Function(ErrorProgressState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProgressState value)? initial,
    TResult Function(LoadingProgressState value)? loading,
    TResult Function(DataProgressState value)? data,
    TResult Function(ErrorProgressState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressStateCopyWith<$Res> {
  factory $ProgressStateCopyWith(
          ProgressState value, $Res Function(ProgressState) then) =
      _$ProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProgressStateCopyWithImpl<$Res>
    implements $ProgressStateCopyWith<$Res> {
  _$ProgressStateCopyWithImpl(this._value, this._then);

  final ProgressState _value;
  // ignore: unused_field
  final $Res Function(ProgressState) _then;
}

/// @nodoc
abstract class $InitialProgressStateCopyWith<$Res> {
  factory $InitialProgressStateCopyWith(InitialProgressState value,
          $Res Function(InitialProgressState) then) =
      _$InitialProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialProgressStateCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res>
    implements $InitialProgressStateCopyWith<$Res> {
  _$InitialProgressStateCopyWithImpl(
      InitialProgressState _value, $Res Function(InitialProgressState) _then)
      : super(_value, (v) => _then(v as InitialProgressState));

  @override
  InitialProgressState get _value => super._value as InitialProgressState;
}

/// @nodoc

class _$InitialProgressState extends InitialProgressState
    with DiagnosticableTreeMixin {
  const _$InitialProgressState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgressState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProgressState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)
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
    TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)?
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
    TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)?
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
    required TResult Function(InitialProgressState value) initial,
    required TResult Function(LoadingProgressState value) loading,
    required TResult Function(DataProgressState value) data,
    required TResult Function(ErrorProgressState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialProgressState value)? initial,
    TResult Function(LoadingProgressState value)? loading,
    TResult Function(DataProgressState value)? data,
    TResult Function(ErrorProgressState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProgressState value)? initial,
    TResult Function(LoadingProgressState value)? loading,
    TResult Function(DataProgressState value)? data,
    TResult Function(ErrorProgressState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialProgressState extends ProgressState {
  const factory InitialProgressState() = _$InitialProgressState;
  const InitialProgressState._() : super._();
}

/// @nodoc
abstract class $LoadingProgressStateCopyWith<$Res> {
  factory $LoadingProgressStateCopyWith(LoadingProgressState value,
          $Res Function(LoadingProgressState) then) =
      _$LoadingProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingProgressStateCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res>
    implements $LoadingProgressStateCopyWith<$Res> {
  _$LoadingProgressStateCopyWithImpl(
      LoadingProgressState _value, $Res Function(LoadingProgressState) _then)
      : super(_value, (v) => _then(v as LoadingProgressState));

  @override
  LoadingProgressState get _value => super._value as LoadingProgressState;
}

/// @nodoc

class _$LoadingProgressState extends LoadingProgressState
    with DiagnosticableTreeMixin {
  const _$LoadingProgressState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgressState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProgressState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)
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
    TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)?
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
    TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)?
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
    required TResult Function(InitialProgressState value) initial,
    required TResult Function(LoadingProgressState value) loading,
    required TResult Function(DataProgressState value) data,
    required TResult Function(ErrorProgressState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialProgressState value)? initial,
    TResult Function(LoadingProgressState value)? loading,
    TResult Function(DataProgressState value)? data,
    TResult Function(ErrorProgressState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProgressState value)? initial,
    TResult Function(LoadingProgressState value)? loading,
    TResult Function(DataProgressState value)? data,
    TResult Function(ErrorProgressState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingProgressState extends ProgressState {
  const factory LoadingProgressState() = _$LoadingProgressState;
  const LoadingProgressState._() : super._();
}

/// @nodoc
abstract class $DataProgressStateCopyWith<$Res> {
  factory $DataProgressStateCopyWith(
          DataProgressState value, $Res Function(DataProgressState) then) =
      _$DataProgressStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading, List<Week> data, Object? cursor, NetworkError? error});
}

/// @nodoc
class _$DataProgressStateCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res>
    implements $DataProgressStateCopyWith<$Res> {
  _$DataProgressStateCopyWithImpl(
      DataProgressState _value, $Res Function(DataProgressState) _then)
      : super(_value, (v) => _then(v as DataProgressState));

  @override
  DataProgressState get _value => super._value as DataProgressState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? data = freezed,
    Object? cursor = freezed,
    Object? error = freezed,
  }) {
    return _then(DataProgressState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Week>,
      cursor: cursor == freezed ? _value.cursor : cursor,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError?,
    ));
  }
}

/// @nodoc

class _$DataProgressState extends DataProgressState
    with DiagnosticableTreeMixin {
  const _$DataProgressState(
      {this.loading = false, required this.data, this.cursor, this.error})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final List<Week> data;
  @override
  final Object? cursor;
  @override
  final NetworkError? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgressState.data(loading: $loading, data: $data, cursor: $cursor, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProgressState.data'))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('cursor', cursor))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataProgressState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.cursor, cursor) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(cursor),
      error);

  @JsonKey(ignore: true)
  @override
  $DataProgressStateCopyWith<DataProgressState> get copyWith =>
      _$DataProgressStateCopyWithImpl<DataProgressState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)
        data,
    required TResult Function(NetworkError error) error,
  }) {
    return data(this.loading, this.data, cursor, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
  }) {
    return data?.call(this.loading, this.data, cursor, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)?
        data,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.loading, this.data, cursor, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProgressState value) initial,
    required TResult Function(LoadingProgressState value) loading,
    required TResult Function(DataProgressState value) data,
    required TResult Function(ErrorProgressState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialProgressState value)? initial,
    TResult Function(LoadingProgressState value)? loading,
    TResult Function(DataProgressState value)? data,
    TResult Function(ErrorProgressState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProgressState value)? initial,
    TResult Function(LoadingProgressState value)? loading,
    TResult Function(DataProgressState value)? data,
    TResult Function(ErrorProgressState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataProgressState extends ProgressState {
  const factory DataProgressState(
      {bool loading,
      required List<Week> data,
      Object? cursor,
      NetworkError? error}) = _$DataProgressState;
  const DataProgressState._() : super._();

  bool get loading;
  List<Week> get data;
  Object? get cursor;
  NetworkError? get error;
  @JsonKey(ignore: true)
  $DataProgressStateCopyWith<DataProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorProgressStateCopyWith<$Res> {
  factory $ErrorProgressStateCopyWith(
          ErrorProgressState value, $Res Function(ErrorProgressState) then) =
      _$ErrorProgressStateCopyWithImpl<$Res>;
  $Res call({NetworkError error});
}

/// @nodoc
class _$ErrorProgressStateCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res>
    implements $ErrorProgressStateCopyWith<$Res> {
  _$ErrorProgressStateCopyWithImpl(
      ErrorProgressState _value, $Res Function(ErrorProgressState) _then)
      : super(_value, (v) => _then(v as ErrorProgressState));

  @override
  ErrorProgressState get _value => super._value as ErrorProgressState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ErrorProgressState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError,
    ));
  }
}

/// @nodoc

class _$ErrorProgressState extends ErrorProgressState
    with DiagnosticableTreeMixin {
  const _$ErrorProgressState({required this.error}) : super._();

  @override
  final NetworkError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgressState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProgressState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorProgressState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  $ErrorProgressStateCopyWith<ErrorProgressState> get copyWith =>
      _$ErrorProgressStateCopyWithImpl<ErrorProgressState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)
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
    TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)?
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
    TResult Function(
            bool loading, List<Week> data, Object? cursor, NetworkError? error)?
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
    required TResult Function(InitialProgressState value) initial,
    required TResult Function(LoadingProgressState value) loading,
    required TResult Function(DataProgressState value) data,
    required TResult Function(ErrorProgressState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialProgressState value)? initial,
    TResult Function(LoadingProgressState value)? loading,
    TResult Function(DataProgressState value)? data,
    TResult Function(ErrorProgressState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProgressState value)? initial,
    TResult Function(LoadingProgressState value)? loading,
    TResult Function(DataProgressState value)? data,
    TResult Function(ErrorProgressState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorProgressState extends ProgressState {
  const factory ErrorProgressState({required NetworkError error}) =
      _$ErrorProgressState;
  const ErrorProgressState._() : super._();

  NetworkError get error;
  @JsonKey(ignore: true)
  $ErrorProgressStateCopyWith<ErrorProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}
