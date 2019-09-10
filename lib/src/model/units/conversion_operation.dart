import 'package:oil_and_gas_unit_converter/src/model/unit.dart';

class ConversionOperation<T> {
  num valueToBeConverted;
  T from;
  T to;
  Unit unit;

  ConversionOperation({this.valueToBeConverted, this.from, this.to, this.unit});
}
