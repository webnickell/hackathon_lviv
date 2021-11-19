import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackathon_lviv/domain/models/habit.dart';
import 'package:hackathon_lviv/domain/repository/habit_repository.dart';

part 'add_habit_bloc.freezed.dart';

@freezed
abstract class AddHabitEvent with _$AddHabitEvent {
  const AddHabitEvent._();

  const factory AddHabitEvent.submit({required Habit habit}) =
      SubmitButtonPressed;
}

@freezed
abstract class AddHabitState with _$AddHabitState {
  const AddHabitState._();

  const factory AddHabitState.initial() = AddHabitInitial;
  const factory AddHabitState.loading() = HabitLoadInProgress;
  const factory AddHabitState.created({
    required Habit habit,
  }) = HabitCreationSuccess;
  const factory AddHabitState.error() = HabitCreationError;
}

class AddHabitBloc extends Bloc<AddHabitEvent, AddHabitState> {
  AddHabitBloc({
    required this.habitRepository,
  }) : super(const AddHabitState.initial());

  final HabitRepository habitRepository;

  @override
  Stream<AddHabitState> mapEventToState(AddHabitEvent event) => event.map(
        submit: _mapSubmitButtonPressedToState,
      );

  Stream<AddHabitState> _mapSubmitButtonPressedToState(
      SubmitButtonPressed event) async* {
    yield const AddHabitState.loading();

    try {
      final res = await habitRepository.createHabit(event.habit);

      yield AddHabitState.created(habit: res);
    } catch (e) {
      yield const AddHabitState.error();
    }
  }
}
