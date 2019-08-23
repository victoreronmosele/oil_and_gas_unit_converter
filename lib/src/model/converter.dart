import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/conversion_operation.dart';

class Converter with ChangeNotifier {
  num _convertedValue;
  set conversionOperation(ConversionOperation conversionOperation) =>
      _convert(conversionOperation);

  num get convertedValue => _convertedValue;

  _convert<T>(ConversionOperation conversionOperation) {
    T from = conversionOperation.from;
    T to = conversionOperation.to;
    Unit unit = conversionOperation.unit;
    num value = conversionOperation.valueToBeConverted;

    num factor = _getFactor(from: from, to: to, unit: unit);
    num convertedResult = value * factor;

    _convertedValue = convertedResult;

    notifyListeners();
  }

  num _getFactor<T>({@required T from, @required T to, Unit unit}) {
    num factor;
    factor = 1 / (unit.unitFactorMap[from] * unit.unitFactorMap[to]);
    return factor;
  }
}
