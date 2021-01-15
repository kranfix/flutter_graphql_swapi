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
    VehicleConnection vehicleConnection,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
