import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackathon_lviv/domain/models/network_error.dart';
import 'package:hackathon_lviv/util/paginated_list.dart';

part 'pagination_bloc.freezed.dart';

@freezed
abstract class PaginationEvent with _$PaginationEvent {
  const PaginationEvent._();

  const factory PaginationEvent.load([@Default(false) bool refresh]) =
      LoadPaginationEvent;
}

@freezed
abstract class PaginationState<T> with _$PaginationState<T> {
  const PaginationState._();

  const factory PaginationState.initial() = InitialPaginationState<T>;
  const factory PaginationState.loading() = LoadingPaginationState<T>;
  const factory PaginationState.data({
    @Default(false) bool loading,
    required List<T> data,
    Object? cursor,
    @Default(false) bool loadedAllItems,
    NetworkError? error,
  }) = DataPaginationState<T>;
  const factory PaginationState.error({
    required NetworkError error,
  }) = ErrorPaginationState<T>;
}

abstract class PaginationBloc<T>
    extends Bloc<PaginationEvent, PaginationState<T>> {
  PaginationBloc() : super(const PaginationState.initial());

  Future<PaginatedList<T>> loadPage([Object? cursor]);

  @override
  Stream<PaginationState<T>> mapEventToState(PaginationEvent event) =>
      event.map(
        load: _mapLoadEventToState,
      );

  Stream<PaginationState<T>> _mapLoadEventToState(
    LoadPaginationEvent event,
  ) async* {
    yield state.maybeMap(
      orElse: () => const PaginationState.loading(),
      data: (data) => data.copyWith(loading: true),
    );

    try {
      final cursor = event.refresh
          ? null
          : state.maybeMap(
              orElse: () => null,
              data: (data) => data.cursor,
            );
      final res = await loadPage(cursor);

      yield state.maybeMap(
        orElse: () => PaginationState.data(
          data: res.data,
          cursor: res.cursor,
          loadedAllItems: res.loadedAllItems,
        ),
        data: (data) => data.copyWith(
          data: event.refresh ? res.data : data.data + res.data,
          cursor: res.cursor,
          loadedAllItems: res.loadedAllItems,
        ),
      );
    } catch (e) {
      const error = const NetworkError();
      yield state.maybeMap(
        orElse: () => const PaginationState.error(error: error),
        data: (data) => data.copyWith(error: error),
      );
    }
  }
}
