// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MonthlyTrackResponse _$MonthlyTrackResponseFromJson(
        Map<String, dynamic> json) =>
    MonthlyTrackResponse(
      trackedDays: (json['trackedDays'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$MonthlyTrackResponseToJson(
        MonthlyTrackResponse instance) =>
    <String, dynamic>{
      'trackedDays':
          instance.trackedDays.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };
