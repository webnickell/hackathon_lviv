import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackathon_lviv/domain/models/event.dart';

class CreateEventRequest {
  const CreateEventRequest({
    required this.authorId,
    required this.name,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.location,
    required this.postScriptum,
    required this.images,
  });

  factory CreateEventRequest.fromModel(Event event) => CreateEventRequest(
        name: event.name,
        description: event.description,
        postScriptum: '',
        startDate: event.begin,
        endDate: DateTime.now(),
        location: GeoPoint(event.coords.lat, event.coords.lng),
        images: event.images,
        authorId: event.authorId,
      );

  Map<String, Object?> toDocument() => {
        'name': name,
        'description': description,
        'postScriptum': postScriptum,
        'startDate': startDate,
        'endDate': endDate,
        'location': location,
        'images': images ?? [],
        'authorId': authorId,
      };

  final String name;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final String authorId;
  final GeoPoint location;
  final String postScriptum;
  final List<String>? images;
}
