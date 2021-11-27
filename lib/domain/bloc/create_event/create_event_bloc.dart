import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hackathon_lviv/domain/models/coords.dart';
import 'package:hackathon_lviv/domain/models/event.dart';
import 'package:hackathon_lviv/domain/repository/event_repository.dart';
import 'package:image_picker/image_picker.dart';

part 'create_event_event.dart';
part 'create_event_state.dart';

enum CreateEventViewSource {
  nameDescription,
  dateLocation,
}

class CreateEventBloc extends Bloc<CreateEventEvent, CreateEventState> {
  CreateEventBloc({
    required this.creatorId,
    required this.repository,
  }) : super(
          CreateEventPageLoadSuccess(
            viewSource: CreateEventViewSource.nameDescription,
          ),
        ) {
    
  
    on<CreateEventEvent>((event, emit) {
      
    });
  }

  final String creatorId;
  final EventRepository repository;
  late Event _event;

  ImagePicker _picker = ImagePicker();
}
