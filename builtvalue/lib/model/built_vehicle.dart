library built_vehicle;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'built_vehicle.g.dart';

abstract class BuiltVehicle
    implements Built<BuiltVehicle, BuiltVehicleBuilder> {
  VehicleTypes get type;

  String get brand;
  double get price;

  @nullable
  bool get newCar;

  BuiltList<String> get passengerNames;

  BuiltVehicle._();

  factory BuiltVehicle([updates(BuiltVehicleBuilder b)]) = _$BuiltVehicle;

  // enables serialization
  static Serializer<BuiltVehicle> get serializer => _$builtVehicleSerializer;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BuiltVehicle.serializer, this));
  }

  static BuiltVehicle fromJson(String jsonString) {
    return serializers.deserializeWith(BuiltVehicle.serializer, json.decode(jsonString));
  }
}

// enums using builtValue
class VehicleTypes extends EnumClass {
  static const VehicleTypes car = _$car;
  static const VehicleTypes motorbike = _$motorbike;
  static const VehicleTypes train = _$train;
  static const VehicleTypes plane = _$plane;

  const VehicleTypes._(String name) : super(name);

  static BuiltSet<VehicleTypes> get values => _$values;
  static VehicleTypes valueOf(String name) => _$valueOf(name);

  // enables enum to be serializable
  static Serializer<VehicleTypes> get serializer => _$vehicleTypesSerializer;
}
