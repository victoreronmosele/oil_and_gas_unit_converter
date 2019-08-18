import 'package:meta/meta.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';

class Converter {
  num convert<T>(
      {@required num value, @required T from, @required T to, Unit unit}) {
    num factor = getFactor(from: from, to: to, unit: unit);
    num convertedResult = value * factor;

    return convertedResult;
  }

  num getFactor<T>({@required T from, @required T to, Unit unit}) {
    num factor;
    factor = 1 / (unit.unitFactorMap[from] * unit.unitFactorMap[to]);
    return factor;
  }
}
