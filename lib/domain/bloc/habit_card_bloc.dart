import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackathon_lviv/domain/models/habit.dart';
import 'package:hackathon_lviv/domain/models/month_track.dart';

part 'habit_card_bloc.freezed.dart';

@freezed
abstract class HabitCardEvent with _$HabitCardEvent {
  const HabitCardEvent._();

  const factory HabitCardEvent.submitDay({
    required bool isSuccess,
    required DateTime date,
  }) = DaySubmitted;

  const factory HabitCardEvent.loadHabitData(
      {required String habitId, required int month}) = LoadHabitDataEvent;
}

@freezed
abstract class HabitCardState with _$HabitCardState {
  const HabitCardState._();

  const factory HabitCardState.initial() = HabitDataLoadInitial;
  const factory HabitCardState.submitLoading() = SubmitLoadInProgress;
  const factory HabitCardState.submitSuccess() = SubmitLoadSuccess;
  const factory HabitCardState.loading() = HabitDataLoadInProgress;
  const factory HabitCardState.loaded({
    required Habit habit,
    required MonthlyTrack track,
  }) = HabitDataLoadSuccess;
  const factory HabitCardState.error() = HabitDataLoadError;
}

class HabitCardBloc extends Bloc<HabitCardEvent, HabitCardState> {
  HabitCardBloc({
    required this.habitId,
    required this.currentMonth,
  }) : super(const HabitCardState.initial()) {
    add(HabitCardEvent.loadHabitData(
      habitId: habitId,
      month: currentMonth,
    ));
  }

  final String habitId;
  final int currentMonth;

  late Habit _habit;
  late MonthlyTrack _track;

  @override
  Stream<HabitCardState> mapEventToState(HabitCardEvent event) => event.map(
        submitDay: _mapDaySubmittedToState,
        loadHabitData: _mapLoadHabitDataEventToState,
      );

  Stream<HabitCardState> _mapDaySubmittedToState(DaySubmitted event) async* {}

  Stream<HabitCardState> _mapLoadHabitDataEventToState(
      LoadHabitDataEvent event) async* {}
}
