import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackathon_lviv/domain/models/account.dart';
import 'package:hackathon_lviv/domain/models/event.dart';
import 'package:hackathon_lviv/domain/repository/account_repository.dart';
import 'package:hackathon_lviv/domain/repository/event_repository.dart';
import 'package:hackathon_lviv/domain/repository/members_repository.dart';

part 'event_bloc.freezed.dart';

@freezed
abstract class EventEvent with _$EventEvent {
  const EventEvent._();

  const factory EventEvent.load(String id) = LoadEventEvent;

  const factory EventEvent.toggleParticipate() = ToggleParticipateEventEvent;
}

@freezed
abstract class EventState with _$EventState {
  const EventState._();

  const factory EventState.initial() = InitialEventState;
  const factory EventState.loading() = LoadingEventState;
  const factory EventState.data({
    @Default(false) bool loading,
    required Event event,
    required List<Account> members,
    required bool participate,
  }) = DataEventState;
  const factory EventState.notFound() = NotFoundEventState;
  const factory EventState.error() = ErrorEventState;
}

class EventBloc extends Bloc<EventEvent, EventState> {
  EventBloc({
    required this.eventRepository,
    required this.accountRepository,
    required this.membersRepository,
    required this.userAccount,
  }) : super(const EventState.initial());

  final EventRepository eventRepository;
  final AccountRepository accountRepository;
  final MembersRepository membersRepository;
  final Account userAccount;

  @override
  Stream<EventState> mapEventToState(EventEvent event) => event.map(
        load: _mapLoadEventToState,
        toggleParticipate: _mapToggleParticipateEventToState,
      );

  Stream<EventState> _mapLoadEventToState(LoadEventEvent event) async* {
    yield state.maybeMap(
      orElse: () => const EventState.loading(),
      data: (data) => data.copyWith(loading: true),
    );

    try {
      final res = await eventRepository.eventById(event.id);

      if (res == null) {
        yield const EventState.notFound();
      } else {
        final memberIds = await membersRepository.eventMembers(event.id);
        final members = await accountRepository.getAccountsByIds(memberIds);

        yield EventState.data(
          event: res,
          members: members,
          participate: memberIds.contains(userAccount.uid),
        );
      }
    } catch (e) {
      yield const EventState.error();
    }
  }

  Stream<EventState> _mapToggleParticipateEventToState(
    ToggleParticipateEventEvent event,
  ) async* {
    final s = state;
    if (s is! DataEventState) return;

    if (s.participate) {
      membersRepository.removeParticipance(s.event.id, userAccount.uid);
    } else {
      membersRepository.addParticipance(s.event.id, userAccount.uid);
    }

    yield s.copyWith(
      participate: !s.participate,
      members: s.participate
          ? (s.members.toList()
            ..removeWhere((element) => element.uid == userAccount.uid))
          : s.members + [userAccount],
    );
  }
}
