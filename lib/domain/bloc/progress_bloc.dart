import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackathon_lviv/domain/models/network_error.dart';
import 'package:hackathon_lviv/domain/models/week.dart';
import 'package:hackathon_lviv/domain/repository/week_repository.dart';

part 'progress_bloc.freezed.dart';

@freezed
abstract class ProgressEvent with _$ProgressEvent {
  const ProgressEvent._();

  const factory ProgressEvent.load([@Default(false) bool refresh]) =
      LoadProgressEvent;
}

@freezed
abstract class ProgressState with _$ProgressState {
  const ProgressState._();

  const factory ProgressState.initial() = InitialProgressState;
  const factory ProgressState.loading() = LoadingProgressState;
  const factory ProgressState.data({
    @Default(false) bool loading,
    required List<Week> data,
    Object? cursor,
    NetworkError? error,
  }) = DataProgressState;
  const factory ProgressState.error({
    required NetworkError error,
  }) = ErrorProgressState;
}

class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  ProgressBloc({required this.weekRepository})
      : super(const ProgressState.initial());

  final IWeekRepository weekRepository;

  @override
  Stream<ProgressState> mapEventToState(ProgressEvent event) => event.map(
        load: _mapLoadEventToState,
      );

  Stream<ProgressState> _mapLoadEventToState(LoadProgressEvent event) async* {
    yield state.maybeMap(
      orElse: () => const ProgressState.loading(),
      data: (data) => data.copyWith(loading: true),
    );

    try {
      final res = await weekRepository.getWeek(from: DateTime.now());

      yield state.maybeMap(
        orElse: () => ProgressState.data(data: res.first, cursor: res.second),
        data: (data) => data.copyWith(data: res.first, cursor: res.second),
      );
    } catch (e) {
      const error = const NetworkError();
      yield state.maybeMap(
        orElse: () => const ProgressState.error(error: error),
        data: (data) => data.copyWith(error: error),
      );
    }
  }
}
