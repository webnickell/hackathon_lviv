import 'package:hackathon_lviv/domain/models/coords.dart';

class Event {
  const Event({
    required this.id,
    required this.authorId,
    this.name = '',
    this.description = '',
    this.coords = const Coords(lat: 0, lng: 0),
    required this.begin,
    required this.end,
    this.images = const [],
    this.postScriptum = '',
  });

  final String id;
  final String name;
  final String description;
  final Coords coords;
  final String authorId;
  final DateTime begin;
  final DateTime end;
  final List<String> images;
  final String postScriptum;

  Event copyWith({
    String? name,
    String? description,
    Coords? coords,
    DateTime? begin,
    DateTime? end,
    List<String>? images,
    String? postScriptum,
  }) {
    return Event(
      id: id,
      authorId: authorId,
      coords: coords ?? this.coords,
      begin: begin ?? this.begin,
      end: end ?? this.end,
      images: images ?? this.images,
      name: name ?? this.name,
      postScriptum: postScriptum ?? this.postScriptum,
      description: description ?? this.description,
    );
  }
}
