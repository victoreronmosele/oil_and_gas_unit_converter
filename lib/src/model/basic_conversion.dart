import 'package:oil_and_gas_unit_converter/src/data/conversions/basic_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversion.dart';

class BasicConversionType implements Conversion {
  List conversionTypeUnitTypes = BasicConversions.values;
}
