import 'package:oil_and_gas_unit_converter/src/model/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/converter.dart';
import 'package:test/test.dart';

void main() {
  test('Converter converts from a unit to another correctly', () {
    final converter = Converter();
    var result = converter.convert(
        value: 1, from: Unit.meterPerSecond, to: Unit.feetPerDay);

    expect(result, 3.2808399);
  });
}
