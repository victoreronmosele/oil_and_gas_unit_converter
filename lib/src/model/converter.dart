import 'package:meta/meta.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';

class Converter {
  num convert(
      {@required num value,
      @required Unit from,
      @required Unit to,
      @required Conversion conversionType}) {
    num factor = getFactor(from: from, to: to, conversionType: conversionType);
    num convertedResult = value * factor;

    return convertedResult;
  }

  num getFactor(
      {@required Unit from,
      @required Unit to,
      @required Conversion conversionType}) {
    num factor;

    return factor;
  }
}
