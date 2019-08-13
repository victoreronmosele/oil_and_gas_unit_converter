import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/basic_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/acceleration.dart';

class BasicConversionType extends Conversion {
  Map conversionStringValueMap = conversionsValuesMap;

  List conversionUnitTypes = BasicConversions.values;
  Unit getUnit(BasicConversions basicConversion) =>
      conversionUnitObjectMap[basicConversion];

  Map<BasicConversions, Unit> conversionUnitObjectMap = {
    BasicConversions.acceleration: AccelerationUnit()
  };
}
