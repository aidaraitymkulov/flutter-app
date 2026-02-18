// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StandingTeamImpl _$$StandingTeamImplFromJson(Map<String, dynamic> json) =>
    _$StandingTeamImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      shortName: json['shortName'] as String?,
      crest: json['crest'] as String?,
    );

Map<String, dynamic> _$$StandingTeamImplToJson(_$StandingTeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortName': instance.shortName,
      'crest': instance.crest,
    };

_$StandingRowImpl _$$StandingRowImplFromJson(Map<String, dynamic> json) =>
    _$StandingRowImpl(
      position: (json['position'] as num).toInt(),
      team: StandingTeam.fromJson(json['team'] as Map<String, dynamic>),
      playedGames: (json['playedGames'] as num).toInt(),
      won: (json['won'] as num).toInt(),
      draw: (json['draw'] as num).toInt(),
      lost: (json['lost'] as num).toInt(),
      points: (json['points'] as num).toInt(),
      goalsFor: (json['goalsFor'] as num).toInt(),
      goalsAgainst: (json['goalsAgainst'] as num).toInt(),
      goalDifference: (json['goalDifference'] as num).toInt(),
    );

Map<String, dynamic> _$$StandingRowImplToJson(_$StandingRowImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'team': instance.team,
      'playedGames': instance.playedGames,
      'won': instance.won,
      'draw': instance.draw,
      'lost': instance.lost,
      'points': instance.points,
      'goalsFor': instance.goalsFor,
      'goalsAgainst': instance.goalsAgainst,
      'goalDifference': instance.goalDifference,
    };

_$StandingTableImpl _$$StandingTableImplFromJson(Map<String, dynamic> json) =>
    _$StandingTableImpl(
      type: json['type'] as String,
      group: json['group'] as String?,
      table: (json['table'] as List<dynamic>)
          .map((e) => StandingRow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StandingTableImplToJson(_$StandingTableImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'group': instance.group,
      'table': instance.table,
    };
