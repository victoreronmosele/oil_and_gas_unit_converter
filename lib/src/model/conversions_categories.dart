import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/basic_conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/drilling_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/fluid_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/force_and_power_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/gas_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/production_conversions.dart';

class ConversionCategories {
  static var conversionCategoriesMap = conversionsValuesMap;
  static List get conversionCategories => conversionCategoriesMap.keys.toList();
  static Map<Conversions, Conversion> conversionCategoriesModelMap = {
    Conversions.basic: BasicConversionType(),
    Conversions.gas: GasConversionType(),
    Conversions.fluid: FluidConversionType(),
    Conversions.forceAndPower: ForceAndPowerConversionType(),
    Conversions.drilling: DrillingConversionType(),
    Conversions.production: ProductionConversionType(),
  };
}
