part of 'create_event_bloc.dart';

class CreateEventState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CreateEventPageLoadSuccess extends CreateEventState {
  final CreateEventViewSource viewSource;

  CreateEventPageLoadSuccess({required this.viewSource});

  @override
  List<Object?> get props => [viewSource];
}

class EventCreateSuccess extends CreateEventState {}

class EventCreateError extends CreateEventState {}
