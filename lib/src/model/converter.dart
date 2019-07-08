import 'package:meta/meta.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';

class Converter {
  num convert({@required num value, @required Unit from, @required Unit to}) {
    num factor = getFactor(from: from, to: to);
    num convertedResult = value * factor;

    return convertedResult;
  }

  num getFactor({@required Unit from, @required Unit to}) {
    num factor;

    switch (from) {
      case Unit.meterPerSecond:
        if (to == Unit.feetPerDay) {
          factor = 3.2808399;
        }
        break;
      default:
        factor = 1;
    }

    return factor;
  }
}
