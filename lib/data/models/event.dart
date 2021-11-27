import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hackathon_lviv/domain/models/coords.dart';
import 'package:hackathon_lviv/domain/models/event.dart';
import 'package:hackathon_lviv/domain/models/short_event.dart';
import 'package:json_annotation/json_annotation.dart';

class EventResponse {
  final String id;
  final String name;
  final String description;
  final GeoPoint location;
  final String authorId;
  final DateTime startDate;
  final DateTime endDate;
  final List<String> images;
  final String postScriptum;

  const EventResponse({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.authorId,
    required this.startDate,
    required this.endDate,
    required this.images,
    required this.postScriptum,
  });

  factory EventResponse.fromDocument(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data()!;
    return EventResponse(
      id: snapshot.id,
      name: data['name'] as String,
      description: data['description'] as String,
      startDate: DateTime.parse(data['startDate']),
      endDate: DateTime.parse(data['endDate']),
      authorId: data['authorId'] as String,
      images: data['images'] as List<String>,
      location: data['location'] as GeoPoint,
      postScriptum: data['location'] as String,
    );
  }

  factory EventResponse.fromModel(Event habit) => EventResponse(
        name: habit.name,
        description: habit.description,
        id: habit.id,
        location: GeoPoint(habit.coords.lat, habit.coords.lng),
        images: habit.images,
        authorId: habit.authorId,
        startDate: habit.begin,
        endDate: DateTime.now(),
        postScriptum: habit.postScriptum,
      );

  Map<String, Object?> toDocument() => {
        'name': name,
        'description': description,
        'location': location,
        'images': images,
        'authorId': authorId,
        'startDate': startDate,
        'endDate': endDate,
        'postScriptum': postScriptum,
      };

  Event toModel([String? id]) => Event(
        id: id ?? this.id,
        name: name,
        description: description,
        coords: Coords(lat: location.latitude, lng: location.longitude),
        authorId: authorId,
        begin: startDate,
        end: endDate,
        images: images,
        postScriptum: postScriptum,
      );

  ShortEvent toShortModel([String? id, int members = 0]) => ShortEvent(
        id: id ?? this.id,
        name: name,
        coords: Coords(lat: location.latitude, lng: location.longitude),
        begin: startDate,
        previewUrl: images.first,
        members: members,
      );
}
