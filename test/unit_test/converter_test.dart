import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/basic_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/acceleration.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/basic_conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions_categories.dart';
import 'package:oil_and_gas_unit_converter/src/model/converter.dart';
import 'package:test/test.dart';

void main() {
  group('Converter', () {
    test('Converter works properly', () {
      Converter converter = Converter();
      num valueToBeConverted = 100;
      num expectedValue = 3047.999902464003;

      var convertedValue = converter.convert<Acceleration>(
          value: valueToBeConverted,
          from: Acceleration.centimeterPerSquareSecond,
          to: Acceleration.footPerSquareSecond,
          unit: BasicConversionType().getUnit(BasicConversions.acceleration));

      expect(convertedValue, expectedValue);
    });
  });

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

    test('Get a list of basic conversion units', () {
      Conversions conversionType = Conversions.basic;

      Conversion conversionTypeModel =
          ConversionCategories.conversionCategoriesModelMap[conversionType];

      List<BasicConversions> listOfConversionUnits =
          conversionTypeModel.conversionUnitTypes;

      List<BasicConversions> expectedListOfConversionUnits = [
        BasicConversions.acceleration,
        BasicConversions.angle,
        BasicConversions.area,
        BasicConversions.costRate,
        BasicConversions.decimalNumberPrefix,
        BasicConversions.density,
        BasicConversions.distributedForces,
        BasicConversions.energy,
        BasicConversions.flowrateMass,
        BasicConversions.flowrateVolume,
        BasicConversions.frequency,
        BasicConversions.length,
        BasicConversions.momentum,
        BasicConversions.pressure,
        BasicConversions.time,
        BasicConversions.torque,
        BasicConversions.volume,
        BasicConversions.weight,
        BasicConversions.weightPerUnitLength,
      ];

      expect(listOfConversionUnits, expectedListOfConversionUnits);
    });
  });
}
