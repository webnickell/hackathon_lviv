import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hackathon_lviv/domain/models/short_event.dart';
import 'package:hackathon_lviv/domain/repository/event_repository.dart';

part 'event_list_event.dart';
part 'event_list_state.dart';

class EventListBloc extends Bloc<EventListEvent, EventListState> {
  EventListBloc(this.repository, this.userId) : super(EventListInitial()) {
    on<LoadUsersEvents>((event, emit) async {
      final events = await repository.eventsByAuthor(id: userId);
      emit(EventListLoaded(events.data));
    });
  }

  final EventRepository repository;
  final String userId;
}
