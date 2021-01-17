import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'planet.freezed.dart';
part 'planet.g.dart';

@freezed
abstract class Planet with _$Planet {
  const factory Planet({
    @nullable String name,
  }) = _Planet;

  factory Planet.fromJson(Map<String, dynamic> json) => _$PlanetFromJson(json);
}
