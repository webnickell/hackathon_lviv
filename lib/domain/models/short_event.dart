import 'package:hackathon_lviv/domain/models/coords.dart';

class ShortEvent {
  ShortEvent({
    required this.id,
    required this.name,
    required this.coords,
    required this.previewUrl,
    required this.begin,
    required this.members,
  });

  final String id;
  final String name;
  final Coords coords;
  final String previewUrl;
  final DateTime begin;
  final int members;
}
