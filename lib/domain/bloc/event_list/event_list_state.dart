part of 'event_list_bloc.dart';

class EventListState extends Equatable {
  @override
  List<Object?> get props => [];
}

class EventListInitial extends EventListState {}

class EventListLoaded extends EventListState {
  final List<ShortEvent> events;

  EventListLoaded(this.events);

  @override
  List<Object?> get props => [events];
}
