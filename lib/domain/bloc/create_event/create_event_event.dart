part of 'create_event_bloc.dart';

class CreateEventEvent extends Equatable {
  const CreateEventEvent();

  @override
  List<Object?> get props => [];
}

class NameDescriptionSubmitted extends CreateEventEvent {
  final String name;
  final String description;

  const NameDescriptionSubmitted({
    required this.name,
    required this.description,
  });
}

class DateLocationSubmitted extends CreateEventEvent {
  final DateTime startsAt;
  final DateTime endsAt;
  final Coords coords;

  const DateLocationSubmitted({
    required this.startsAt,
    required this.endsAt,
    required this.coords,
  });
}

class BackButtonPressed extends CreateEventEvent {
  const BackButtonPressed({required this.viewSource});

  final CreateEventViewSource viewSource;

  @override
  List<Object?> get props => [viewSource];
}

class SubmitButtonPressed extends CreateEventEvent {}

class AddPhotosButtonPressed extends CreateEventEvent {}
