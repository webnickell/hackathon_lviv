part of 'create_event_bloc.dart';

class CreateEventState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CreateEventInitial extends CreateEventState {}

class CreateEventPageLoadSuccess extends CreateEventState {
  final CreateEventViewSource viewSource;

  CreateEventPageLoadSuccess({required this.viewSource});

  @override
  List<Object?> get props => [viewSource];
}

class PhotosLoadSuccess extends CreateEventState {
  final List<String> images;

  PhotosLoadSuccess(this.images);

  @override
  List<Object?> get props => [images];
}

class PhotosLoadInProgress extends CreateEventState {}

class LocationSelected extends CreateEventState {
  final LatLng location;

  LocationSelected(this.location);
  @override
  List<Object?> get props => [location];
}

class EventCreateSuccess extends CreateEventState {}

class EventCreateError extends CreateEventState {}
