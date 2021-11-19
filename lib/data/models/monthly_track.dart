import 'package:hackathon_lviv/domain/models/monthly_track.dart';
import 'package:json_annotation/json_annotation.dart';

part 'monthly_track.g.dart';

@JsonSerializable()
class MonthlyTrackResponse {
  final Map<DateTime, bool> trackedDays;

  const MonthlyTrackResponse({required this.trackedDays});

  factory MonthlyTrackResponse.fromJson(Map<String, Object?> json) =>
      _$MonthlyTrackResponseFromJson(json);

  factory MonthlyTrackResponse.fromModel(MonthlyTrack track) =>
      MonthlyTrackResponse(
        trackedDays: track.trackedDays,
      );

  Map<String, Object?> toJson() => _$MonthlyTrackResponseToJson(this);

  MonthlyTrack toModel() => MonthlyTrack(trackedDays: trackedDays);
}
