import 'package:hackathon_lviv/domain/models/coords.dart';

class Event {
  const Event({
    required this.id,
    required this.name,
    required this.description,
    required this.coords,
    required this.authorId,
    required this.begin,
    required this.images,
    required this.postScriptum,
  });

  final String id;
  final String name;
  final String description;
  final Coords coords;
  final String authorId;
  final DateTime begin;
  final List<String> images;
  final String postScriptum;
}
