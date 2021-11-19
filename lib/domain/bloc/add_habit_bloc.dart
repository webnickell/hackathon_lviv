import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackathon_lviv/domain/models/habit.dart';

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
  const factory AddHabitState.created() = HabitCreationSuccess;
  const factory AddHabitState.error() = HabitCreationError;
}

class AddHabitBloc extends Bloc<AddHabitEvent, AddHabitState> {
  AddHabitBloc() : super(const AddHabitState.initial());

  @override
  Stream<AddHabitState> mapEventToState(AddHabitEvent event) => event.map(
        submit: _mapSubmitButtonPressedToState,
      );

  Stream<AddHabitState> _mapSubmitButtonPressedToState(
      SubmitButtonPressed event) async* {
    yield state.maybeMap(
      orElse: () => const AddHabitState.loading(),
      loading: (loading) => loading,
    );

    try {
      final res = await Future.delayed(const Duration(seconds: 1));

      yield state.maybeMap(
        orElse: () => const AddHabitState.created(),
        loading: (created) => created,
      );
    } catch (e) {
      yield state.maybeMap(
        orElse: () => const AddHabitState.error(),
        error: (error) => error,
      );
    }
  }
}
