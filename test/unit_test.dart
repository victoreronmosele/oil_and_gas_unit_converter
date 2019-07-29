import 'dart:math';

import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/basic_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/drilling_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/fluid_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/force_and_power_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/gas_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/production_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/acceleration.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/angle.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/area.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/cost_rate.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/decimal_number_prefix.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/density.dart';
import 'package:test/test.dart';

void main() {
  group('Conversion general tests', () {
    test('All enums have string values in the conversion map', () {
      bool allConversionsEnumsAreMapped =
          areAllEnumsMappedToString<Conversions>(
              Conversions.values, conversionsValuesMap);
      bool allBasicConversionsEnumsAreMapped = areAllEnumsMappedToString(
          BasicConversions.values, basicConversionsValuesMap);
      bool allGasConversionsEnumsAreMapped = areAllEnumsMappedToString(
          GasConversions.values, gasConversionsValuesMap);
      bool allFluidConversionsEnumsAreMapped = areAllEnumsMappedToString(
          FluidConversions.values, fluidConversionValuesMap);
      bool allForceAndPowerConversionsEnumsAreMapped =
          areAllEnumsMappedToString(ForceAndPowerConversions.values,
              forceAndPowerConversionsValuesMap);
      bool allDrillingConversionsEnumsAreMapped = areAllEnumsMappedToString(
          DrillingConversions.values, drillingConversionsValuesMap);
      bool allProductionConversionsEnumsAreMapped = areAllEnumsMappedToString(
          ProductionConversions.values, productionConversionsValuesMap);
      bool allAccelerationEnumsAreMapped =
          areAllEnumsMappedToString(Acceleration.values, accelerationValuesMap);
      bool allAngleEnumsAreMapped =
          areAllEnumsMappedToString(Angle.values, angleValuesMap);
      bool allAreaEnumsAreMapped =
          areAllEnumsMappedToString(Area.values, areaValuesMap);
      bool allCostRateEnumsAreMapped =
          areAllEnumsMappedToString(CostRate.values, costRateValuesMap);
      bool allDecimalNumberPrefixEnumsAreMapped = areAllEnumsMappedToString(
          DecimalNumberPrefix.values, decimalNumberPrefixValuesMap);
      bool allDensityEnumsAreMapped =
          areAllEnumsMappedToString(Density.values, densityValuesMap);

      expect(allConversionsEnumsAreMapped, true);
      expect(allBasicConversionsEnumsAreMapped, true);
      expect(allGasConversionsEnumsAreMapped, true);
      expect(allFluidConversionsEnumsAreMapped, true);
      expect(allForceAndPowerConversionsEnumsAreMapped, true);
      expect(allDrillingConversionsEnumsAreMapped, true);
      expect(allProductionConversionsEnumsAreMapped, true);
      expect(allAccelerationEnumsAreMapped, true);
      expect(allAngleEnumsAreMapped, true);
      expect(allAreaEnumsAreMapped, true);
      expect(allCostRateEnumsAreMapped, true);
      expect(allDecimalNumberPrefixEnumsAreMapped, true);
      expect(allDensityEnumsAreMapped, true);
    });
  });
}

bool areAllEnumsMappedToString<T>(
    List<T> enumValues, Map<T, String> enumValuesMap) {
  bool allEnumsAreMapped = enumValues.every((enumValue) {
    return enumValuesMap.containsKey(enumValue);
  });
  return allEnumsAreMapped;
}
