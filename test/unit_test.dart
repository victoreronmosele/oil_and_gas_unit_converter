import 'package:flutter/rendering.dart';
import 'package:oil_and_gas_unit_converter/src/data/enums.dart';
import 'package:oil_and_gas_unit_converter/src/data/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/converter.dart';
import 'package:test/test.dart';

void main() {
  test('Converter converts from a unit to another correctly', () {
    final converter = Converter();
    var result1 = converter.convert(
        value: 1, from: Unit.meterPerSecond, to: Unit.feetPerDay);

    var result2 = converter.convert(
        value: 1, from: Unit.feetPerDay, to: Unit.meterPerSecond);

    expect(result1, 3.2808399);
    expect(result2, 1 / 3.2808399);
  });

  test('All enums have string values in the conversion map', () {
    bool allConversionsEnumsAreMapped =
        areAllEnumsMappedToString(Conversions.values, conversionsValuesMap);
    bool allBasicConversionsEnumsAreMapped = areAllEnumsMappedToString(
        BasicConversions.values, basicConversionsValuesMap);
    bool allGasConversionsEnumsAreMapped = areAllEnumsMappedToString(
        GasConversions.values, gasConversionsValuesMap);
    bool allFluidConversionsEnumsAreMapped = areAllEnumsMappedToString(
        FluidConversions.values, fluidConversionValuesMap);
    bool allForceAndPowerConversionsEnumsAreMapped = areAllEnumsMappedToString(
        ForceAndPowerConversions.values, forceAndPowerConversionsValuesMap);
    bool allDrillingConversionsEnumsAreMapped = areAllEnumsMappedToString(
        DrillingConversions.values, drillingConversionsValuesMap);
    bool allProductionConversionsEnumsAreMapped = areAllEnumsMappedToString(
        ProductionConversions.values, productionConversionsValuesMap);

    expect(allConversionsEnumsAreMapped, true);
    expect(allBasicConversionsEnumsAreMapped, true);
    expect(allGasConversionsEnumsAreMapped, true);
    expect(allFluidConversionsEnumsAreMapped, true);
    expect(allForceAndPowerConversionsEnumsAreMapped, true);
    expect(allDrillingConversionsEnumsAreMapped, true);
    expect(allProductionConversionsEnumsAreMapped, true);
  });
}

bool areAllEnumsMappedToString<T>(
    List<T> enumValues, Map<T, String> enumValuesMap) {
  bool allEnumsAreMapped = enumValues.every((enumValue) {
    print(enumValue);
    return enumValuesMap.containsKey(enumValue);
  });
  return allEnumsAreMapped;
}
