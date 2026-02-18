// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scorer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScorerPlayer _$ScorerPlayerFromJson(Map<String, dynamic> json) {
  return _ScorerPlayer.fromJson(json);
}

/// @nodoc
mixin _$ScorerPlayer {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;

  /// Serializes this ScorerPlayer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScorerPlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScorerPlayerCopyWith<ScorerPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScorerPlayerCopyWith<$Res> {
  factory $ScorerPlayerCopyWith(
    ScorerPlayer value,
    $Res Function(ScorerPlayer) then,
  ) = _$ScorerPlayerCopyWithImpl<$Res, ScorerPlayer>;
  @useResult
  $Res call({int id, String name, String? nationality});
}

/// @nodoc
class _$ScorerPlayerCopyWithImpl<$Res, $Val extends ScorerPlayer>
    implements $ScorerPlayerCopyWith<$Res> {
  _$ScorerPlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScorerPlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nationality = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            nationality: freezed == nationality
                ? _value.nationality
                : nationality // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScorerPlayerImplCopyWith<$Res>
    implements $ScorerPlayerCopyWith<$Res> {
  factory _$$ScorerPlayerImplCopyWith(
    _$ScorerPlayerImpl value,
    $Res Function(_$ScorerPlayerImpl) then,
  ) = __$$ScorerPlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? nationality});
}

/// @nodoc
class __$$ScorerPlayerImplCopyWithImpl<$Res>
    extends _$ScorerPlayerCopyWithImpl<$Res, _$ScorerPlayerImpl>
    implements _$$ScorerPlayerImplCopyWith<$Res> {
  __$$ScorerPlayerImplCopyWithImpl(
    _$ScorerPlayerImpl _value,
    $Res Function(_$ScorerPlayerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScorerPlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nationality = freezed,
  }) {
    return _then(
      _$ScorerPlayerImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        nationality: freezed == nationality
            ? _value.nationality
            : nationality // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScorerPlayerImpl implements _ScorerPlayer {
  const _$ScorerPlayerImpl({
    required this.id,
    required this.name,
    this.nationality,
  });

  factory _$ScorerPlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScorerPlayerImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? nationality;

  @override
  String toString() {
    return 'ScorerPlayer(id: $id, name: $name, nationality: $nationality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScorerPlayerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nationality);

  /// Create a copy of ScorerPlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScorerPlayerImplCopyWith<_$ScorerPlayerImpl> get copyWith =>
      __$$ScorerPlayerImplCopyWithImpl<_$ScorerPlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScorerPlayerImplToJson(this);
  }
}

abstract class _ScorerPlayer implements ScorerPlayer {
  const factory _ScorerPlayer({
    required final int id,
    required final String name,
    final String? nationality,
  }) = _$ScorerPlayerImpl;

  factory _ScorerPlayer.fromJson(Map<String, dynamic> json) =
      _$ScorerPlayerImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get nationality;

  /// Create a copy of ScorerPlayer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScorerPlayerImplCopyWith<_$ScorerPlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScorerTeam _$ScorerTeamFromJson(Map<String, dynamic> json) {
  return _ScorerTeam.fromJson(json);
}

/// @nodoc
mixin _$ScorerTeam {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get crest => throw _privateConstructorUsedError;

  /// Serializes this ScorerTeam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScorerTeam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScorerTeamCopyWith<ScorerTeam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScorerTeamCopyWith<$Res> {
  factory $ScorerTeamCopyWith(
    ScorerTeam value,
    $Res Function(ScorerTeam) then,
  ) = _$ScorerTeamCopyWithImpl<$Res, ScorerTeam>;
  @useResult
  $Res call({int id, String name, String? crest});
}

/// @nodoc
class _$ScorerTeamCopyWithImpl<$Res, $Val extends ScorerTeam>
    implements $ScorerTeamCopyWith<$Res> {
  _$ScorerTeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScorerTeam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? crest = freezed}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            crest: freezed == crest
                ? _value.crest
                : crest // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScorerTeamImplCopyWith<$Res>
    implements $ScorerTeamCopyWith<$Res> {
  factory _$$ScorerTeamImplCopyWith(
    _$ScorerTeamImpl value,
    $Res Function(_$ScorerTeamImpl) then,
  ) = __$$ScorerTeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? crest});
}

/// @nodoc
class __$$ScorerTeamImplCopyWithImpl<$Res>
    extends _$ScorerTeamCopyWithImpl<$Res, _$ScorerTeamImpl>
    implements _$$ScorerTeamImplCopyWith<$Res> {
  __$$ScorerTeamImplCopyWithImpl(
    _$ScorerTeamImpl _value,
    $Res Function(_$ScorerTeamImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScorerTeam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? crest = freezed}) {
    return _then(
      _$ScorerTeamImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        crest: freezed == crest
            ? _value.crest
            : crest // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScorerTeamImpl implements _ScorerTeam {
  const _$ScorerTeamImpl({required this.id, required this.name, this.crest});

  factory _$ScorerTeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScorerTeamImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? crest;

  @override
  String toString() {
    return 'ScorerTeam(id: $id, name: $name, crest: $crest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScorerTeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.crest, crest) || other.crest == crest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, crest);

  /// Create a copy of ScorerTeam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScorerTeamImplCopyWith<_$ScorerTeamImpl> get copyWith =>
      __$$ScorerTeamImplCopyWithImpl<_$ScorerTeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScorerTeamImplToJson(this);
  }
}

abstract class _ScorerTeam implements ScorerTeam {
  const factory _ScorerTeam({
    required final int id,
    required final String name,
    final String? crest,
  }) = _$ScorerTeamImpl;

  factory _ScorerTeam.fromJson(Map<String, dynamic> json) =
      _$ScorerTeamImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get crest;

  /// Create a copy of ScorerTeam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScorerTeamImplCopyWith<_$ScorerTeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Scorer _$ScorerFromJson(Map<String, dynamic> json) {
  return _Scorer.fromJson(json);
}

/// @nodoc
mixin _$Scorer {
  ScorerPlayer get player => throw _privateConstructorUsedError;
  ScorerTeam get team => throw _privateConstructorUsedError;
  int? get goals => throw _privateConstructorUsedError;
  int? get assists => throw _privateConstructorUsedError;
  int? get penalties => throw _privateConstructorUsedError;

  /// Serializes this Scorer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScorerCopyWith<Scorer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScorerCopyWith<$Res> {
  factory $ScorerCopyWith(Scorer value, $Res Function(Scorer) then) =
      _$ScorerCopyWithImpl<$Res, Scorer>;
  @useResult
  $Res call({
    ScorerPlayer player,
    ScorerTeam team,
    int? goals,
    int? assists,
    int? penalties,
  });

  $ScorerPlayerCopyWith<$Res> get player;
  $ScorerTeamCopyWith<$Res> get team;
}

/// @nodoc
class _$ScorerCopyWithImpl<$Res, $Val extends Scorer>
    implements $ScorerCopyWith<$Res> {
  _$ScorerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? team = null,
    Object? goals = freezed,
    Object? assists = freezed,
    Object? penalties = freezed,
  }) {
    return _then(
      _value.copyWith(
            player: null == player
                ? _value.player
                : player // ignore: cast_nullable_to_non_nullable
                      as ScorerPlayer,
            team: null == team
                ? _value.team
                : team // ignore: cast_nullable_to_non_nullable
                      as ScorerTeam,
            goals: freezed == goals
                ? _value.goals
                : goals // ignore: cast_nullable_to_non_nullable
                      as int?,
            assists: freezed == assists
                ? _value.assists
                : assists // ignore: cast_nullable_to_non_nullable
                      as int?,
            penalties: freezed == penalties
                ? _value.penalties
                : penalties // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScorerPlayerCopyWith<$Res> get player {
    return $ScorerPlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScorerTeamCopyWith<$Res> get team {
    return $ScorerTeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScorerImplCopyWith<$Res> implements $ScorerCopyWith<$Res> {
  factory _$$ScorerImplCopyWith(
    _$ScorerImpl value,
    $Res Function(_$ScorerImpl) then,
  ) = __$$ScorerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ScorerPlayer player,
    ScorerTeam team,
    int? goals,
    int? assists,
    int? penalties,
  });

  @override
  $ScorerPlayerCopyWith<$Res> get player;
  @override
  $ScorerTeamCopyWith<$Res> get team;
}

/// @nodoc
class __$$ScorerImplCopyWithImpl<$Res>
    extends _$ScorerCopyWithImpl<$Res, _$ScorerImpl>
    implements _$$ScorerImplCopyWith<$Res> {
  __$$ScorerImplCopyWithImpl(
    _$ScorerImpl _value,
    $Res Function(_$ScorerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? team = null,
    Object? goals = freezed,
    Object? assists = freezed,
    Object? penalties = freezed,
  }) {
    return _then(
      _$ScorerImpl(
        player: null == player
            ? _value.player
            : player // ignore: cast_nullable_to_non_nullable
                  as ScorerPlayer,
        team: null == team
            ? _value.team
            : team // ignore: cast_nullable_to_non_nullable
                  as ScorerTeam,
        goals: freezed == goals
            ? _value.goals
            : goals // ignore: cast_nullable_to_non_nullable
                  as int?,
        assists: freezed == assists
            ? _value.assists
            : assists // ignore: cast_nullable_to_non_nullable
                  as int?,
        penalties: freezed == penalties
            ? _value.penalties
            : penalties // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScorerImpl implements _Scorer {
  const _$ScorerImpl({
    required this.player,
    required this.team,
    this.goals,
    this.assists,
    this.penalties,
  });

  factory _$ScorerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScorerImplFromJson(json);

  @override
  final ScorerPlayer player;
  @override
  final ScorerTeam team;
  @override
  final int? goals;
  @override
  final int? assists;
  @override
  final int? penalties;

  @override
  String toString() {
    return 'Scorer(player: $player, team: $team, goals: $goals, assists: $assists, penalties: $penalties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScorerImpl &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.assists, assists) || other.assists == assists) &&
            (identical(other.penalties, penalties) ||
                other.penalties == penalties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, player, team, goals, assists, penalties);

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScorerImplCopyWith<_$ScorerImpl> get copyWith =>
      __$$ScorerImplCopyWithImpl<_$ScorerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScorerImplToJson(this);
  }
}

abstract class _Scorer implements Scorer {
  const factory _Scorer({
    required final ScorerPlayer player,
    required final ScorerTeam team,
    final int? goals,
    final int? assists,
    final int? penalties,
  }) = _$ScorerImpl;

  factory _Scorer.fromJson(Map<String, dynamic> json) = _$ScorerImpl.fromJson;

  @override
  ScorerPlayer get player;
  @override
  ScorerTeam get team;
  @override
  int? get goals;
  @override
  int? get assists;
  @override
  int? get penalties;

  /// Create a copy of Scorer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScorerImplCopyWith<_$ScorerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
