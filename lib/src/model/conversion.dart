import 'package:oil_and_gas_unit_converter/src/model/unit.dart';

  class Conversion {
   Map conversionStringValueMap ;
   List conversionUnitTypes;
   static Unit getUnit(T) {
     return Unit();
   }
   static Map<Type, Unit> conversionUnitObjectMap;
}
