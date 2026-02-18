import 'package:freezed_annotation/freezed_annotation.dart';

part 'scorer.freezed.dart';
part 'scorer.g.dart';

@freezed
class ScorerPlayer with _$ScorerPlayer {
  const factory ScorerPlayer({
    required int id,
    required String name,
    String? nationality,
  }) = _ScorerPlayer;

  factory ScorerPlayer.fromJson(Map<String, dynamic> json) =>
      _$ScorerPlayerFromJson(json);
}

@freezed
class ScorerTeam with _$ScorerTeam {
  const factory ScorerTeam({
    required int id,
    required String name,
    String? crest,
  }) = _ScorerTeam;

  factory ScorerTeam.fromJson(Map<String, dynamic> json) =>
      _$ScorerTeamFromJson(json);
}

@freezed
class Scorer with _$Scorer {
  const factory Scorer({
    required ScorerPlayer player,
    required ScorerTeam team,
    int? goals,
    int? assists,
    int? penalties,
  }) = _Scorer;

  factory Scorer.fromJson(Map<String, dynamic> json) => _$ScorerFromJson(json);
}
