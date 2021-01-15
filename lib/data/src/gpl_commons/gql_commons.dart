import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gql_commons.freezed.dart';
part 'gql_commons.g.dart';

@freezed
abstract class PageInfo with _$PageInfo {
  const factory PageInfo({
    @nullable int first,
    @nullable int last,
    @nullable String after,
    @nullable String before,
  }) = _PageInfo;

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);
}
