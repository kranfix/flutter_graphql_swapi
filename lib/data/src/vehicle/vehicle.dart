import 'package:freezed_annotation/freezed_annotation.dart';
export '';
part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

@freezed
abstract class Vehicle with _$Vehicle {
  const factory Vehicle({@required String name}) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}

@freezed
abstract class VehicleConnection with _$VehicleConnection {
  const factory VehicleConnection({
    @required List<Vehicle> vehicles,
  }) = _VehicleConnection;

  factory VehicleConnection.fromJson(Map<String, dynamic> json) =>
      _$VehicleConnectionFromJson(json);
}
