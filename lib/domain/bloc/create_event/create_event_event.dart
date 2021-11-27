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

class DateFaqSubmitted extends CreateEventEvent {
  final DateTime startsAt;
  final DateTime endsAt;
  final String faq;

  const DateFaqSubmitted({
    required this.startsAt,
    required this.endsAt,
    required this.faq,
  });
}

class LocationSubmitted extends CreateEventEvent {
  final LatLng location;

  const LocationSubmitted({required this.location});

  @override
  List<Object?> get props => [location];
}

class BackButtonPressed extends CreateEventEvent {
  const BackButtonPressed({required this.viewSource});

  final CreateEventViewSource viewSource;

  @override
  List<Object?> get props => [viewSource];
}

class SubmitButtonPressed extends CreateEventEvent {}

class AddPhotosButtonPressed extends CreateEventEvent {}
