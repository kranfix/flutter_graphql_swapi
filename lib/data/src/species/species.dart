import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'species.freezed.dart';
part 'species.g.dart';

@freezed
abstract class Species with _$Species {
  const factory Species({
    @nullable String name,
  }) = _Species;

  factory Species.fromJson(Map<String, dynamic> json) =>
      _$SpeciesFromJson(json);
}
