import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathon_lviv/domain/models/coords.dart';
import 'package:hackathon_lviv/domain/models/event.dart';
import 'package:hackathon_lviv/domain/repository/event_repository.dart';
import 'package:image_picker/image_picker.dart';

part 'create_event_event.dart';
part 'create_event_state.dart';

enum CreateEventViewSource {
  nameDescription,
  dateFaq,
  locationPhoto,
}

class CreateEventBloc extends Bloc<CreateEventEvent, CreateEventState> {
  CreateEventBloc({
    required this.creatorId,
    required this.repository,
    required this.storage,
  }) : super(
          CreateEventPageLoadSuccess(
            viewSource: CreateEventViewSource.nameDescription,
          ),
        ) {
    _event = Event(
      id: '',
      authorId: creatorId,
      begin: DateTime.now(),
      end: DateTime.now(),
    );

    on<NameDescriptionSubmitted>((event, emit) {
      _event =
          _event.copyWith(name: event.name, description: event.description);
      emit(CreateEventInitial());
      emit(
        CreateEventPageLoadSuccess(
          viewSource: CreateEventViewSource.dateFaq,
        ),
      );
    });
    on<LocationSubmitted>((event, emit) {
      _event = _event.copyWith(
        coords: Coords(
          lat: event.location.latitude,
          lng: event.location.longitude,
        ),
      );
      emit(LocationSelected(event.location));
    });
    on<DateFaqSubmitted>((event, emit) async {
      _event = _event.copyWith(
        begin: event.startsAt,
        end: event.endsAt,
        postScriptum: event.faq,
      );
      //_event = await repository.createEvent(_event);
      await Future.delayed(Duration(seconds: 1));
      emit(CreateEventInitial());
      emit(
        CreateEventPageLoadSuccess(
          viewSource: CreateEventViewSource.locationPhoto,
        ),
      );
    });
    on<AddPhotosButtonPressed>((event, emit) async {
      List<String> imageUrls = [];

      emit(PhotosLoadInProgress());

      try {
        List<XFile>? images = await _picker.pickMultiImage();

        if (images != null) {
          for (var image in images) {
            String ref = '/events/${_event.id}/${image.name}';

            await storage.ref(ref).putFile(File(image.path));
            imageUrls.add(await storage.ref(ref).getDownloadURL());
          }
        }
      } catch (e) {
        emit(EventCreateError());
      }

      emit(PhotosLoadSuccess(imageUrls));
      _event = _event.copyWith(images: imageUrls);
    });
    on<BackButtonPressed>((event, emit) {
      emit(CreateEventInitial());
      emit(
        CreateEventPageLoadSuccess(
          viewSource: event.viewSource,
        ),
      );
    });
    on<SubmitButtonPressed>((event, emit) async {
      await repository.createEvent(_event);
      emit(EventCreateSuccess());
      emit(
        CreateEventPageLoadSuccess(
          viewSource: CreateEventViewSource.nameDescription,
        ),
      );
    });
  }

  final String creatorId;
  final EventRepository repository;
  final FirebaseStorage storage;
  final ImagePicker _picker = ImagePicker();
  late Event _event;
}
