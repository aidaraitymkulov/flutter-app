// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scorer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScorerPlayerImpl _$$ScorerPlayerImplFromJson(Map<String, dynamic> json) =>
    _$ScorerPlayerImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      nationality: json['nationality'] as String?,
    );

Map<String, dynamic> _$$ScorerPlayerImplToJson(_$ScorerPlayerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nationality': instance.nationality,
    };

_$ScorerTeamImpl _$$ScorerTeamImplFromJson(Map<String, dynamic> json) =>
    _$ScorerTeamImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      crest: json['crest'] as String?,
    );

Map<String, dynamic> _$$ScorerTeamImplToJson(_$ScorerTeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'crest': instance.crest,
    };

_$ScorerImpl _$$ScorerImplFromJson(Map<String, dynamic> json) => _$ScorerImpl(
  player: ScorerPlayer.fromJson(json['player'] as Map<String, dynamic>),
  team: ScorerTeam.fromJson(json['team'] as Map<String, dynamic>),
  goals: (json['goals'] as num?)?.toInt(),
  assists: (json['assists'] as num?)?.toInt(),
  penalties: (json['penalties'] as num?)?.toInt(),
);

Map<String, dynamic> _$$ScorerImplToJson(_$ScorerImpl instance) =>
    <String, dynamic>{
      'player': instance.player,
      'team': instance.team,
      'goals': instance.goals,
      'assists': instance.assists,
      'penalties': instance.penalties,
    };
