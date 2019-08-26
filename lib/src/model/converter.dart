import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions_categories.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/conversion_operation.dart';

class Converter with ChangeNotifier {
  Conversions _currentConversionCategory;

  Map<Conversions, String> get conversionCategoriesMap =>
      ConversionCategories.conversionCategoriesMap;
  List<Conversions> get conversionCategoriesList =>
      ConversionCategories.conversionCategories;

  set currentConversionCategory(Conversions conversionCategory) {
    _currentConversionCategory = conversionCategory;
    notifyListeners();
  }

  Conversions get currentConversionCategory =>
      _currentConversionCategory ??
      ConversionCategories.conversionCategories.first;

  num _convertedValue;
  set conversionOperation(ConversionOperation conversionOperation) {
    num convertedResult = _getConvertedValue(conversionOperation);
    _convertedValue = convertedResult;
    notifyListeners();
  }

  num get convertedValue => _convertedValue;

  num _getConvertedValue<T>(ConversionOperation conversionOperation) {
    T from = conversionOperation.from;
    T to = conversionOperation.to;
    Unit unit = conversionOperation.unit;
    num value = conversionOperation.valueToBeConverted;

    num factor = _getFactor(from: from, to: to, unit: unit);
    num convertedResult = value * factor;

    return convertedResult;
  }

  num _getFactor<T>({@required T from, @required T to, Unit unit}) {
    num factor;
    factor = 1 / (unit.unitFactorMap[from] * unit.unitFactorMap[to]);
    return factor;
  }
}
