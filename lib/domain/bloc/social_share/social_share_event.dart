part of 'social_share_bloc.dart';

class SocialShareEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ShareEventOnInstagramButtonPressed extends SocialShareEvent {
  final Event event;

  ShareEventOnInstagramButtonPressed({required this.event});

  @override
  List<Object?> get props => [event];
}
