import 'package:flutter/foundation.dart';
import 'package:flutter_graphql_swapi/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
abstract class Person with _$Person {
  const factory Person({
    @nullable String name,
    @nullable String birthYear,
    @nullable String eyeColor,
    @nullable String hairColor,
    @nullable String skinColor,
    PersonVehicleConnection vehicleConnection,
    Planet homeworld,
    @nullable Species species,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}

@freezed
abstract class PeopleConnection with _$PeopleConnection {
  const factory PeopleConnection({
    @nullable PageInfo pageInfo,
    @nullable List<PeopleEdge> edges,
    @nullable int totalCount,
  }) = _PeopleConnection;

  factory PeopleConnection.fromJson(Map<String, dynamic> json) =>
      _$PeopleConnectionFromJson(json);
}

@freezed
abstract class PeopleEdge with _$PeopleEdge {
  const factory PeopleEdge({
    @nullable Person node,
    @required String cursor,
  }) = _PeopleEdge;

  factory PeopleEdge.fromJson(Map<String, dynamic> json) =>
      _$PeopleEdgeFromJson(json);
}
