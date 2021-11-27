import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:screenshot/screenshot.dart';
import 'package:social_share/social_share.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hackathon_lviv/domain/models/event.dart';
import 'package:hackathon_lviv/domain/models/short_event.dart';
import 'package:hackathon_lviv/widgets/components/event_card.dart';

part 'social_share_event.dart';
part 'social_share_state.dart';

class SocialShareBloc extends Bloc<SocialShareEvent, SocialShareState> {
  SocialShareBloc() : super(SocialShareInitial()) {
    on<ShareEventOnInstagramButtonPressed>((event, emit) async {
      final directory = await getTemporaryDirectory();
      final imagePath = '${directory.path}/instashare.png';

      final Uint8List imageBytes =
          await _screenshotController.captureFromWidget(
        EventCard(
          event: ShortEvent(
            begin: event.event.begin,
            name: event.event.name,
            coords: event.event.coords,
            id: event.event.id,
            members: 0,
            previewUrl: event.event.images[0],
          ),
        ),
      );

      File file = await File('${directory.path}/instashare.png').create();
      await file.writeAsBytes(imageBytes);

      await SocialShare.shareInstagramStory(
        imagePath,
        backgroundTopColor: "ffe3ec",
        backgroundBottomColor: "ffe3ec",
      );
    });
  }

  final SocialShare _socialShare = SocialShare();
  final ScreenshotController _screenshotController = ScreenshotController();
}
