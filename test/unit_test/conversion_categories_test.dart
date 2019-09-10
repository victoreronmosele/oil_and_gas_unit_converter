import 'package:flutter/foundation.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/basic_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/drilling_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/fluid_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/force_and_power_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/gas_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/production_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/basic_conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/drilling_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/fluid_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/force_and_power_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/gas_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/production_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions_categories.dart';
import 'package:test/test.dart';

void main() {
  group('ConversionCategories', () {
    test('Get list of conversion types', () {
      List listOfConversionTypes = [
        Conversions.basic,
        Conversions.gas,
        Conversions.fluid,
        Conversions.forceAndPower,
        Conversions.drilling,
        Conversions.production
      ];

      expect(ConversionCategories.conversionCategories, listOfConversionTypes);
    });

    test('Returns correct list of conversion units', () {
      Conversion basicConversionTypeModel =
          ConversionCategories.conversionCategoriesModelMap[Conversions.basic];
      Conversion drillingConversionTypeModel = ConversionCategories
          .conversionCategoriesModelMap[Conversions.drilling];
      Conversion fluidConversionTypeModel =
          ConversionCategories.conversionCategoriesModelMap[Conversions.fluid];
      Conversion forceAndPowerConversionTypeModel = ConversionCategories
          .conversionCategoriesModelMap[Conversions.forceAndPower];
      Conversion gasConversionTypeModel =
          ConversionCategories.conversionCategoriesModelMap[Conversions.gas];
      Conversion productionConversionTypeModel = ConversionCategories
          .conversionCategoriesModelMap[Conversions.production];

      List<BasicConversions> listOfBasicConversionUnits =
          basicConversionTypeModel.conversionUnitTypes;
      List<DrillingConversions> listOfDrilllingConversionUnits =
          drillingConversionTypeModel.conversionUnitTypes;
      List<FluidConversions> listOfFluidConversionUnits =
          fluidConversionTypeModel.conversionUnitTypes;
      List<ForceAndPowerConversions> listOfForceAndPowerConversionUnits =
          forceAndPowerConversionTypeModel.conversionUnitTypes;
      List<GasConversions> listOfGasConversionUnits =
          gasConversionTypeModel.conversionUnitTypes;
      List<ProductionConversions> listOfProductionConversionUnits =
          productionConversionTypeModel.conversionUnitTypes;

      List<BasicConversions> expectedListOfBasicConversionUnits =
          BasicConversions.values;
      List<DrillingConversions> expectedListOfDrilllingConversionUnits =
          DrillingConversions.values;
      List<FluidConversions> expectedListOfFluidConversionUnits =
          FluidConversions.values;
      List<ForceAndPowerConversions>
          expectedListOfForceAndPowerConversionUnits =
          ForceAndPowerConversions.values;
      List<GasConversions> expectedListOfGasConversionUnits =
          GasConversions.values;
      List<ProductionConversions> expectedListOfProductionConversionUnits =
          ProductionConversions.values;

      expect(listOfBasicConversionUnits, expectedListOfBasicConversionUnits);
      expect(listOfDrilllingConversionUnits,
          expectedListOfDrilllingConversionUnits);
      expect(listOfFluidConversionUnits, expectedListOfFluidConversionUnits);
      expect(listOfForceAndPowerConversionUnits,
          expectedListOfForceAndPowerConversionUnits);
      expect(listOfGasConversionUnits, expectedListOfGasConversionUnits);
      expect(listOfProductionConversionUnits,
          expectedListOfProductionConversionUnits);
    });
    test(
        'Checks that all categories units classes are correctly defined with values and factors',
        () {
      List basicUnits =
          BasicConversionType().conversionUnitObjectMap.values.toList();
      List gasUnits =
          GasConversionType().conversionUnitObjectMap.values.toList();
      List fluidUnits =
          FluidConversionType().conversionUnitObjectMap.values.toList();
      List forceAndPowerUnits =
          ForceAndPowerConversionType().conversionUnitObjectMap.values.toList();
      List drillingUnits =
          DrillingConversionType().conversionUnitObjectMap.values.toList();
      List productionUnits =
          ProductionConversionType().conversionUnitObjectMap.values.toList();

      bool allBasicUnitsClassesAreCorrectlyDefined =
          areUnitClassesAreCorrectlyDefined(basicUnits);
      bool allGasUnitsClassesAreCorrectlyDefined =
          areUnitClassesAreCorrectlyDefined(gasUnits);
      bool allFluidUnitsClassesAreCorrectlyDefined =
          areUnitClassesAreCorrectlyDefined(fluidUnits);
      bool allForceAndPowerUnitsClassesAreCorrectlyDefined =
          areUnitClassesAreCorrectlyDefined(forceAndPowerUnits);
      bool allDrillingUnitsClassesAreCorrectlyDefined =
          areUnitClassesAreCorrectlyDefined(drillingUnits);
      bool allProductionUnitsClassesAreCorrectlyDefined =
          areUnitClassesAreCorrectlyDefined(productionUnits);

      expect(allBasicUnitsClassesAreCorrectlyDefined, true);
      expect(allGasUnitsClassesAreCorrectlyDefined, true);
      expect(allFluidUnitsClassesAreCorrectlyDefined, true);
      expect(allForceAndPowerUnitsClassesAreCorrectlyDefined, true);
      expect(allDrillingUnitsClassesAreCorrectlyDefined, true);
      expect(allProductionUnitsClassesAreCorrectlyDefined, true);
    });

    test('Checks that all categories units classes are mapped', () {
      bool allBasicUnitsClassesAreCorrectlyDefined =
          areCategoryUnitsMapped(BasicConversionType());
      bool allGasUnitsClassesAreCorrectlyDefined =
          areCategoryUnitsMapped(GasConversionType());
      bool allFluidUnitsClassesAreCorrectlyDefined =
          areCategoryUnitsMapped(FluidConversionType());
      bool allForceAndPowerUnitsClassesAreCorrectlyDefined =
          areCategoryUnitsMapped(ForceAndPowerConversionType());
      bool allDrillingUnitsClassesAreCorrectlyDefined =
          areCategoryUnitsMapped(DrillingConversionType());
      bool allProductionUnitsClassesAreCorrectlyDefined =
          areCategoryUnitsMapped(ProductionConversionType());

      expect(allBasicUnitsClassesAreCorrectlyDefined, true);
      expect(allGasUnitsClassesAreCorrectlyDefined, true);
      expect(allFluidUnitsClassesAreCorrectlyDefined, true);
      expect(allForceAndPowerUnitsClassesAreCorrectlyDefined, true);
      expect(allDrillingUnitsClassesAreCorrectlyDefined, true);
      expect(allProductionUnitsClassesAreCorrectlyDefined, true);
    });
  });
}

bool areUnitClassesAreCorrectlyDefined(List listOfUnit) {
  bool unitClassesAreCorrectlyDefined = listOfUnit.every((unit) {
    return unit.unitFactorMap != null && unit.unitValuesMap != null;
  });

  return unitClassesAreCorrectlyDefined;
}

bool areCategoryUnitsMapped(Conversion conversion) {
  List conversionUnits = conversion.conversionUnitObjectMap.keys.toList();
  List conversionEnumKeys = conversion.conversionUnitTypes;
  bool unitListEqualsEnumKeysList =
      listEquals(conversionUnits, conversionEnumKeys);

  return unitListEqualsEnumKeysList;
}
