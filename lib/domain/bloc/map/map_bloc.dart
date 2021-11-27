import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackathon_lviv/domain/models/coords.dart';
import 'package:hackathon_lviv/domain/models/short_event.dart';
import 'package:hackathon_lviv/domain/repository/event_repository.dart';

part 'map_bloc.freezed.dart';

@freezed
abstract class MapEvent with _$MapEvent {
  const MapEvent._();

  const factory MapEvent.loadByCoords({
    required Coords coords,
  }) = LoadByCoordsMapEvent;

  const factory MapEvent.loadByMyLocation() = LoadByMyLocationMapEvent;

  const factory MapEvent.loadMoreLocation() = LoadMoreMapEvent;
}

@freezed
abstract class MapState with _$MapState {
  const MapState._();

  const factory MapState.initial() = InitialMapState;
  const factory MapState.loading() = LoadingMapState;
  const factory MapState.data({
    @Default(false) bool loading,
    required List<ShortEvent> events,
    required Coords centerLocation,
    Object? cursor,
    @Default(false) bool loadedAllItems,
  }) = DataMapState;
  const factory MapState.error() = ErrorMapState;

  Coords? get location => maybeMap(
        orElse: () => null,
        data: (data) => data.centerLocation,
      );
}

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc({
    required this.eventRepository,
  }) : super(const MapState.initial());

  final EventRepository eventRepository;

  @override
  Stream<MapState> mapEventToState(MapEvent event) => event.map(
        loadByCoords: _mapLoadByCoordsEventToState,
        loadByMyLocation: _mapLoadByMyLocationEventToState,
        loadMoreLocation: _mapLoadMoreLocationEventToState,
      );

  Stream<MapState> _mapLoadByCoordsEventToState(
    LoadByCoordsMapEvent event,
  ) async* {
    yield state.maybeMap(
      orElse: () => const MapState.loading(),
      data: (data) => data.copyWith(loading: true),
    );

    try {
      final res = await eventRepository.eventsByLocation(
        coords: event.coords,
        limit: 10,
      );

      yield state.maybeMap(
        orElse: () => MapState.data(
          events: res.data,
          centerLocation: event.coords,
          cursor: res.cursor,
          loadedAllItems: res.loadedAllItems,
        ),
        data: (data) => data.copyWith(
          loading: false,
          cursor: res.cursor,
          loadedAllItems: res.loadedAllItems,
          centerLocation: event.coords,
          events: res.data,
        ),
      );
    } catch (e) {
      yield const MapState.error();
    }
  }

  Stream<MapState> _mapLoadByMyLocationEventToState(
      LoadByMyLocationMapEvent event) async* {}

  Stream<MapState> _mapLoadMoreLocationEventToState(
    LoadMoreMapEvent event,
  ) async* {
    final s = state;
    if (s is! DataMapState) return;
    yield s.copyWith(loading: true);

    try {
      final res = await eventRepository.eventsByLocation(
        coords: s.centerLocation,
        cursor: s.cursor,
        limit: 10,
      );

      yield s.copyWith(
        loading: false,
        cursor: res.cursor,
        loadedAllItems: res.loadedAllItems,
        events: s.events + res.data,
      );
    } catch (e) {
      yield const MapState.error();
    }
  }
}
