import 'package:oil_and_gas_unit_converter/src/data/conversions/basic_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/acceleration.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions/basic_conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/converter.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/conversion_operation.dart';
import 'package:test/test.dart';

//TODO Have a setting to change decimal rounding
void main() {
  group('Converter', () {
    test('Converter works properly', () {
      Converter converter = Converter();
      num valueToBeConverted = 100;
      num expectedValue = 3.28084;

      ConversionOperation conversionOperation = ConversionOperation(
          valueToBeConverted: valueToBeConverted,
          from: Acceleration.centimeterPerSquareSecond,
          to: Acceleration.footPerSquareSecond,
          unit: BasicConversionType().getUnit(BasicConversions.acceleration));

      converter.conversionOperation = conversionOperation;

      var convertedValue = converter.convertedValue;

      expect(convertedValue, expectedValue);
    });
  });
}
