import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required int id,
    required String name,
    String? position,
    String? dateOfBirth,
    String? nationality,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

@freezed
class Coach with _$Coach {
  const factory Coach({
    int? id,
    String? name,
    String? nationality,
  }) = _Coach;

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);
}

@freezed
class Team with _$Team {
  const factory Team({
    required int id,
    required String name,
    String? shortName,
    String? tla,
    String? crest,
    String? address,
    String? website,
    int? founded,
    String? clubColors,
    String? venue,
    @Default([]) List<Player> squad,
    Coach? coach,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
