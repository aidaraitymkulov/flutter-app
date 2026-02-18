// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StandingTeam _$StandingTeamFromJson(Map<String, dynamic> json) {
  return _StandingTeam.fromJson(json);
}

/// @nodoc
mixin _$StandingTeam {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get shortName => throw _privateConstructorUsedError;
  String? get crest => throw _privateConstructorUsedError;

  /// Serializes this StandingTeam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StandingTeam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StandingTeamCopyWith<StandingTeam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingTeamCopyWith<$Res> {
  factory $StandingTeamCopyWith(
    StandingTeam value,
    $Res Function(StandingTeam) then,
  ) = _$StandingTeamCopyWithImpl<$Res, StandingTeam>;
  @useResult
  $Res call({int id, String name, String? shortName, String? crest});
}

/// @nodoc
class _$StandingTeamCopyWithImpl<$Res, $Val extends StandingTeam>
    implements $StandingTeamCopyWith<$Res> {
  _$StandingTeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StandingTeam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortName = freezed,
    Object? crest = freezed,
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
            shortName: freezed == shortName
                ? _value.shortName
                : shortName // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$StandingTeamImplCopyWith<$Res>
    implements $StandingTeamCopyWith<$Res> {
  factory _$$StandingTeamImplCopyWith(
    _$StandingTeamImpl value,
    $Res Function(_$StandingTeamImpl) then,
  ) = __$$StandingTeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? shortName, String? crest});
}

/// @nodoc
class __$$StandingTeamImplCopyWithImpl<$Res>
    extends _$StandingTeamCopyWithImpl<$Res, _$StandingTeamImpl>
    implements _$$StandingTeamImplCopyWith<$Res> {
  __$$StandingTeamImplCopyWithImpl(
    _$StandingTeamImpl _value,
    $Res Function(_$StandingTeamImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StandingTeam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortName = freezed,
    Object? crest = freezed,
  }) {
    return _then(
      _$StandingTeamImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        shortName: freezed == shortName
            ? _value.shortName
            : shortName // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$StandingTeamImpl implements _StandingTeam {
  const _$StandingTeamImpl({
    required this.id,
    required this.name,
    this.shortName,
    this.crest,
  });

  factory _$StandingTeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandingTeamImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? shortName;
  @override
  final String? crest;

  @override
  String toString() {
    return 'StandingTeam(id: $id, name: $name, shortName: $shortName, crest: $crest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingTeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.crest, crest) || other.crest == crest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, shortName, crest);

  /// Create a copy of StandingTeam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingTeamImplCopyWith<_$StandingTeamImpl> get copyWith =>
      __$$StandingTeamImplCopyWithImpl<_$StandingTeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StandingTeamImplToJson(this);
  }
}

abstract class _StandingTeam implements StandingTeam {
  const factory _StandingTeam({
    required final int id,
    required final String name,
    final String? shortName,
    final String? crest,
  }) = _$StandingTeamImpl;

  factory _StandingTeam.fromJson(Map<String, dynamic> json) =
      _$StandingTeamImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get shortName;
  @override
  String? get crest;

  /// Create a copy of StandingTeam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StandingTeamImplCopyWith<_$StandingTeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StandingRow _$StandingRowFromJson(Map<String, dynamic> json) {
  return _StandingRow.fromJson(json);
}

/// @nodoc
mixin _$StandingRow {
  int get position => throw _privateConstructorUsedError;
  StandingTeam get team => throw _privateConstructorUsedError;
  int get playedGames => throw _privateConstructorUsedError;
  int get won => throw _privateConstructorUsedError;
  int get draw => throw _privateConstructorUsedError;
  int get lost => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  int get goalsFor => throw _privateConstructorUsedError;
  int get goalsAgainst => throw _privateConstructorUsedError;
  int get goalDifference => throw _privateConstructorUsedError;

  /// Serializes this StandingRow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StandingRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StandingRowCopyWith<StandingRow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingRowCopyWith<$Res> {
  factory $StandingRowCopyWith(
    StandingRow value,
    $Res Function(StandingRow) then,
  ) = _$StandingRowCopyWithImpl<$Res, StandingRow>;
  @useResult
  $Res call({
    int position,
    StandingTeam team,
    int playedGames,
    int won,
    int draw,
    int lost,
    int points,
    int goalsFor,
    int goalsAgainst,
    int goalDifference,
  });

  $StandingTeamCopyWith<$Res> get team;
}

/// @nodoc
class _$StandingRowCopyWithImpl<$Res, $Val extends StandingRow>
    implements $StandingRowCopyWith<$Res> {
  _$StandingRowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StandingRow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? team = null,
    Object? playedGames = null,
    Object? won = null,
    Object? draw = null,
    Object? lost = null,
    Object? points = null,
    Object? goalsFor = null,
    Object? goalsAgainst = null,
    Object? goalDifference = null,
  }) {
    return _then(
      _value.copyWith(
            position: null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as int,
            team: null == team
                ? _value.team
                : team // ignore: cast_nullable_to_non_nullable
                      as StandingTeam,
            playedGames: null == playedGames
                ? _value.playedGames
                : playedGames // ignore: cast_nullable_to_non_nullable
                      as int,
            won: null == won
                ? _value.won
                : won // ignore: cast_nullable_to_non_nullable
                      as int,
            draw: null == draw
                ? _value.draw
                : draw // ignore: cast_nullable_to_non_nullable
                      as int,
            lost: null == lost
                ? _value.lost
                : lost // ignore: cast_nullable_to_non_nullable
                      as int,
            points: null == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                      as int,
            goalsFor: null == goalsFor
                ? _value.goalsFor
                : goalsFor // ignore: cast_nullable_to_non_nullable
                      as int,
            goalsAgainst: null == goalsAgainst
                ? _value.goalsAgainst
                : goalsAgainst // ignore: cast_nullable_to_non_nullable
                      as int,
            goalDifference: null == goalDifference
                ? _value.goalDifference
                : goalDifference // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of StandingRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StandingTeamCopyWith<$Res> get team {
    return $StandingTeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StandingRowImplCopyWith<$Res>
    implements $StandingRowCopyWith<$Res> {
  factory _$$StandingRowImplCopyWith(
    _$StandingRowImpl value,
    $Res Function(_$StandingRowImpl) then,
  ) = __$$StandingRowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int position,
    StandingTeam team,
    int playedGames,
    int won,
    int draw,
    int lost,
    int points,
    int goalsFor,
    int goalsAgainst,
    int goalDifference,
  });

  @override
  $StandingTeamCopyWith<$Res> get team;
}

/// @nodoc
class __$$StandingRowImplCopyWithImpl<$Res>
    extends _$StandingRowCopyWithImpl<$Res, _$StandingRowImpl>
    implements _$$StandingRowImplCopyWith<$Res> {
  __$$StandingRowImplCopyWithImpl(
    _$StandingRowImpl _value,
    $Res Function(_$StandingRowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StandingRow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? team = null,
    Object? playedGames = null,
    Object? won = null,
    Object? draw = null,
    Object? lost = null,
    Object? points = null,
    Object? goalsFor = null,
    Object? goalsAgainst = null,
    Object? goalDifference = null,
  }) {
    return _then(
      _$StandingRowImpl(
        position: null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as int,
        team: null == team
            ? _value.team
            : team // ignore: cast_nullable_to_non_nullable
                  as StandingTeam,
        playedGames: null == playedGames
            ? _value.playedGames
            : playedGames // ignore: cast_nullable_to_non_nullable
                  as int,
        won: null == won
            ? _value.won
            : won // ignore: cast_nullable_to_non_nullable
                  as int,
        draw: null == draw
            ? _value.draw
            : draw // ignore: cast_nullable_to_non_nullable
                  as int,
        lost: null == lost
            ? _value.lost
            : lost // ignore: cast_nullable_to_non_nullable
                  as int,
        points: null == points
            ? _value.points
            : points // ignore: cast_nullable_to_non_nullable
                  as int,
        goalsFor: null == goalsFor
            ? _value.goalsFor
            : goalsFor // ignore: cast_nullable_to_non_nullable
                  as int,
        goalsAgainst: null == goalsAgainst
            ? _value.goalsAgainst
            : goalsAgainst // ignore: cast_nullable_to_non_nullable
                  as int,
        goalDifference: null == goalDifference
            ? _value.goalDifference
            : goalDifference // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StandingRowImpl implements _StandingRow {
  const _$StandingRowImpl({
    required this.position,
    required this.team,
    required this.playedGames,
    required this.won,
    required this.draw,
    required this.lost,
    required this.points,
    required this.goalsFor,
    required this.goalsAgainst,
    required this.goalDifference,
  });

  factory _$StandingRowImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandingRowImplFromJson(json);

  @override
  final int position;
  @override
  final StandingTeam team;
  @override
  final int playedGames;
  @override
  final int won;
  @override
  final int draw;
  @override
  final int lost;
  @override
  final int points;
  @override
  final int goalsFor;
  @override
  final int goalsAgainst;
  @override
  final int goalDifference;

  @override
  String toString() {
    return 'StandingRow(position: $position, team: $team, playedGames: $playedGames, won: $won, draw: $draw, lost: $lost, points: $points, goalsFor: $goalsFor, goalsAgainst: $goalsAgainst, goalDifference: $goalDifference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingRowImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.playedGames, playedGames) ||
                other.playedGames == playedGames) &&
            (identical(other.won, won) || other.won == won) &&
            (identical(other.draw, draw) || other.draw == draw) &&
            (identical(other.lost, lost) || other.lost == lost) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.goalsFor, goalsFor) ||
                other.goalsFor == goalsFor) &&
            (identical(other.goalsAgainst, goalsAgainst) ||
                other.goalsAgainst == goalsAgainst) &&
            (identical(other.goalDifference, goalDifference) ||
                other.goalDifference == goalDifference));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    position,
    team,
    playedGames,
    won,
    draw,
    lost,
    points,
    goalsFor,
    goalsAgainst,
    goalDifference,
  );

  /// Create a copy of StandingRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingRowImplCopyWith<_$StandingRowImpl> get copyWith =>
      __$$StandingRowImplCopyWithImpl<_$StandingRowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StandingRowImplToJson(this);
  }
}

abstract class _StandingRow implements StandingRow {
  const factory _StandingRow({
    required final int position,
    required final StandingTeam team,
    required final int playedGames,
    required final int won,
    required final int draw,
    required final int lost,
    required final int points,
    required final int goalsFor,
    required final int goalsAgainst,
    required final int goalDifference,
  }) = _$StandingRowImpl;

  factory _StandingRow.fromJson(Map<String, dynamic> json) =
      _$StandingRowImpl.fromJson;

  @override
  int get position;
  @override
  StandingTeam get team;
  @override
  int get playedGames;
  @override
  int get won;
  @override
  int get draw;
  @override
  int get lost;
  @override
  int get points;
  @override
  int get goalsFor;
  @override
  int get goalsAgainst;
  @override
  int get goalDifference;

  /// Create a copy of StandingRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StandingRowImplCopyWith<_$StandingRowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StandingTable _$StandingTableFromJson(Map<String, dynamic> json) {
  return _StandingTable.fromJson(json);
}

/// @nodoc
mixin _$StandingTable {
  String get type => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  List<StandingRow> get table => throw _privateConstructorUsedError;

  /// Serializes this StandingTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StandingTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StandingTableCopyWith<StandingTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingTableCopyWith<$Res> {
  factory $StandingTableCopyWith(
    StandingTable value,
    $Res Function(StandingTable) then,
  ) = _$StandingTableCopyWithImpl<$Res, StandingTable>;
  @useResult
  $Res call({String type, String? group, List<StandingRow> table});
}

/// @nodoc
class _$StandingTableCopyWithImpl<$Res, $Val extends StandingTable>
    implements $StandingTableCopyWith<$Res> {
  _$StandingTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StandingTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? group = freezed,
    Object? table = null,
  }) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            group: freezed == group
                ? _value.group
                : group // ignore: cast_nullable_to_non_nullable
                      as String?,
            table: null == table
                ? _value.table
                : table // ignore: cast_nullable_to_non_nullable
                      as List<StandingRow>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StandingTableImplCopyWith<$Res>
    implements $StandingTableCopyWith<$Res> {
  factory _$$StandingTableImplCopyWith(
    _$StandingTableImpl value,
    $Res Function(_$StandingTableImpl) then,
  ) = __$$StandingTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String? group, List<StandingRow> table});
}

/// @nodoc
class __$$StandingTableImplCopyWithImpl<$Res>
    extends _$StandingTableCopyWithImpl<$Res, _$StandingTableImpl>
    implements _$$StandingTableImplCopyWith<$Res> {
  __$$StandingTableImplCopyWithImpl(
    _$StandingTableImpl _value,
    $Res Function(_$StandingTableImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StandingTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? group = freezed,
    Object? table = null,
  }) {
    return _then(
      _$StandingTableImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        group: freezed == group
            ? _value.group
            : group // ignore: cast_nullable_to_non_nullable
                  as String?,
        table: null == table
            ? _value._table
            : table // ignore: cast_nullable_to_non_nullable
                  as List<StandingRow>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StandingTableImpl implements _StandingTable {
  const _$StandingTableImpl({
    required this.type,
    this.group,
    required final List<StandingRow> table,
  }) : _table = table;

  factory _$StandingTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandingTableImplFromJson(json);

  @override
  final String type;
  @override
  final String? group;
  final List<StandingRow> _table;
  @override
  List<StandingRow> get table {
    if (_table is EqualUnmodifiableListView) return _table;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_table);
  }

  @override
  String toString() {
    return 'StandingTable(type: $type, group: $group, table: $table)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingTableImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other._table, _table));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    type,
    group,
    const DeepCollectionEquality().hash(_table),
  );

  /// Create a copy of StandingTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingTableImplCopyWith<_$StandingTableImpl> get copyWith =>
      __$$StandingTableImplCopyWithImpl<_$StandingTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StandingTableImplToJson(this);
  }
}

abstract class _StandingTable implements StandingTable {
  const factory _StandingTable({
    required final String type,
    final String? group,
    required final List<StandingRow> table,
  }) = _$StandingTableImpl;

  factory _StandingTable.fromJson(Map<String, dynamic> json) =
      _$StandingTableImpl.fromJson;

  @override
  String get type;
  @override
  String? get group;
  @override
  List<StandingRow> get table;

  /// Create a copy of StandingTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StandingTableImplCopyWith<_$StandingTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
