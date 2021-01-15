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
abstract class PersonVehicleConnection with _$PersonVehicleConnection {
  const factory PersonVehicleConnection({
    @required List<Vehicle> vehicles,
  }) = _PersonVehicleConnection;

  factory PersonVehicleConnection.fromJson(Map<String, dynamic> json) =>
      _$PersonVehicleConnectionFromJson(json);
}
