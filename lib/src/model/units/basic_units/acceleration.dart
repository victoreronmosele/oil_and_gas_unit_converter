import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/acceleration.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';

class AccelerationUnit extends Unit {
   Map unitValuesMap = accelerationValuesMap;
   Map unitFactorMap = {
    Acceleration.centimeterPerSquareSecond: 1,
    Acceleration.footPerSquareSecond: 30.48
  };
}
