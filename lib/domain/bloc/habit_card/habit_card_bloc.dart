import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackathon_lviv/domain/models/habit.dart';
import 'package:hackathon_lviv/domain/models/monthly_track.dart';
import 'package:hackathon_lviv/domain/models/network_error.dart';
import 'package:hackathon_lviv/domain/repository/checked_days_repository.dart';
import 'package:hackathon_lviv/domain/repository/habit_repository.dart';

part 'habit_card_bloc.freezed.dart';

@freezed
abstract class HabitCardEvent with _$HabitCardEvent {
  const HabitCardEvent._();

  const factory HabitCardEvent.load(String id) = LoadHabitDataEvent;

  const factory HabitCardEvent.selectDate({
    required DateTime date,
  }) = SelectDate;

  const factory HabitCardEvent.submitDates() = SubmitDates;
}

@freezed
abstract class HabitCardState with _$HabitCardState {
  const HabitCardState._();

  const factory HabitCardState.initial() = HabitDataLoadInitial;
  const factory HabitCardState.loading() = HabitDataLoadInProgress;
  const factory HabitCardState.data({
    required Habit habit,
    required Set<DateTime> markedDates,
    required Set<DateTime> selectedDates,
    @Default(false) bool loading,
    NetworkError? error,
  }) = HabitDataLoadData;
  const factory HabitCardState.error() = HabitDataLoadError;

  bool get canSubmit => maybeMap(
        orElse: () => false,
        data: (data) => data.selectedDates.isNotEmpty,
      );
}

class HabitCardBloc extends Bloc<HabitCardEvent, HabitCardState> {
  HabitCardBloc({
    required this.habitRepository,
    required this.checkedDaysRepository,
  }) : super(const HabitCardState.initial());

  final HabitRepository habitRepository;
  final CheckedDaysRepository checkedDaysRepository;

  @override
  Stream<HabitCardState> mapEventToState(HabitCardEvent event) => event.map(
        selectDate: _mapDaySubmittedToState,
        submitDates: _mapSubmitDatesEventToState,
        load: _mapLoadHabitDataEventToState,
      );

  Stream<HabitCardState> _mapDaySubmittedToState(SelectDate event) async* {
    final s = state;
    if (s is HabitDataLoadData) {
      final selected = s.selectedDates;
      final unuion = selected.union({event.date});

      yield s.copyWith(selectedDates: unuion);
    }
  }

  Stream<HabitCardState> _mapLoadHabitDataEventToState(
    LoadHabitDataEvent event,
  ) async* {
    yield const HabitCardState.loading();

    try {
      final habit = await habitRepository.getHabit(event.id);

      final dates = await checkedDaysRepository.dates(event.id);

      yield HabitCardState.data(
        habit: habit,
        selectedDates: const {},
        markedDates: dates.toSet(),
      );
    } catch (e) {
      yield state.maybeMap(
        orElse: () => const HabitCardState.error(),
        data: (data) => data.copyWith(error: const NetworkError()),
      );
    }
  }

  Stream<HabitCardState> _mapSubmitDatesEventToState(SubmitDates event) async* {
    final s = state;
    if (s is HabitDataLoadData) {
      final selectedDates = s.selectedDates;
      if (selectedDates.isEmpty) return;

      try {
        yield s.copyWith(loading: true, error: null);
        final futures = selectedDates.map((date) {
          return checkedDaysRepository.writeDateInHabit(s.habit.id!, date);
        });

        // await habitRepository.updateHabit(Habit(
        //   id: s.habit.id,
        //   designType: s.habit.designType,
        //   description: s.habit.description,
        //   name: s.habit.name,
        //   type: s.habit.type,
        //   progress: selectedDates.length + (s.habit.progress ?? 0),
        // ));

        await Future.wait(futures);

        yield s.copyWith(
          selectedDates: const {},
          markedDates: s.markedDates.union(selectedDates),
        );
      } catch (e) {
        yield s.copyWith(error: NetworkError());
      }
    }
  }
}
