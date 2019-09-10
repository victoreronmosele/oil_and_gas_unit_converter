import 'package:oil_and_gas_unit_converter/src/model/unit.dart';

class Conversion {
  Map conversionStringValueMap;
  List conversionUnitTypes;
  Unit getUnit<T>(T t) {
    return conversionUnitObjectMap[t];
  }

  Map<dynamic, Unit> conversionUnitObjectMap;
}
