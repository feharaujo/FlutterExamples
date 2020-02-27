import 'package:builtvalue/model/built_vehicle.dart';

class CodeRunner {
  static void runCode() {
    var car = BuiltVehicle((b) => b
      ..type = VehicleTypes.car
      ..brand = "tesla"
      ..passengerNames.addAll(['Felipe', 'Mariana', 'Euclides'])
      ..price = 50000);

    print(car);

    var copieCar = car.rebuild((b) => b
      ..brand = 'Canada RainWays'
      ..type = VehicleTypes.train);

    print(copieCar);

    final carJson = car.toJson();
    print("carJson: $carJson");

    final carFromJson = BuiltVehicle.fromJson(carJson).rebuild((b) => b..price = 2000);
    print("carFromJson: $carFromJson");
  }
}
