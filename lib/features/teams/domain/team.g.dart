// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  position: json['position'] as String?,
  dateOfBirth: json['dateOfBirth'] as String?,
  nationality: json['nationality'] as String?,
);

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'position': instance.position,
      'dateOfBirth': instance.dateOfBirth,
      'nationality': instance.nationality,
    };

_$CoachImpl _$$CoachImplFromJson(Map<String, dynamic> json) => _$CoachImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  nationality: json['nationality'] as String?,
);

Map<String, dynamic> _$$CoachImplToJson(_$CoachImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nationality': instance.nationality,
    };

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  shortName: json['shortName'] as String?,
  tla: json['tla'] as String?,
  crest: json['crest'] as String?,
  address: json['address'] as String?,
  website: json['website'] as String?,
  founded: (json['founded'] as num?)?.toInt(),
  clubColors: json['clubColors'] as String?,
  venue: json['venue'] as String?,
  squad:
      (json['squad'] as List<dynamic>?)
          ?.map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  coach: json['coach'] == null
      ? null
      : Coach.fromJson(json['coach'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortName': instance.shortName,
      'tla': instance.tla,
      'crest': instance.crest,
      'address': instance.address,
      'website': instance.website,
      'founded': instance.founded,
      'clubColors': instance.clubColors,
      'venue': instance.venue,
      'squad': instance.squad,
      'coach': instance.coach,
    };
