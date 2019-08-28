import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions_categories.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/conversion_operation.dart';

class Converter with ChangeNotifier {
  Conversions _currentConversionCategory;

  set toUnit(dynamic toUnitParam) {
    _toUnit = toUnitParam;
    notifyListeners();
  }

  set fromUnit(dynamic fromUnitParam) {
    _fromUnit = fromUnitParam;
    notifyListeners();
  }

  dynamic _toUnit;
  dynamic get toUnit => _toUnit ?? toUnitList.first;

  List _toUnitList;

  List get toUnitList =>
      _toUnitList ??
      ConversionCategories
          .conversionCategoriesModelMap[currentConversionCategory]
          .conversionUnitObjectMap[currentUnitType]
          .unitValuesMap
          .keys
          .toList();

  dynamic _fromUnit;

  dynamic get fromUnit => _fromUnit ?? fromUnitList.first;

  List _fromUnitList;

  List get fromUnitList =>
      _fromUnitList ??
      ConversionCategories
          .conversionCategoriesModelMap[currentConversionCategory]
          .conversionUnitObjectMap[currentUnitType]
          .unitValuesMap
          .keys
          .toList();

  dynamic get currentUnitType =>
      _currentUnitType ??
      ConversionCategories
          .conversionCategoriesModelMap[_currentConversionCategory ??
              ConversionCategories.conversionCategories.first]
          .conversionUnitTypes
          .first;

  dynamic _currentUnitType;

  set currentUnitType(dynamic currentUnitTypeParam) {
    _currentUnitType = currentUnitTypeParam;
    _fromUnitList = ConversionCategories
        .conversionCategoriesModelMap[currentConversionCategory]
        .conversionUnitObjectMap[currentUnitTypeParam]
        .unitValuesMap
        .keys
        .toList();
    _toUnitList = ConversionCategories
        .conversionCategoriesModelMap[currentConversionCategory]
        .conversionUnitObjectMap[currentUnitTypeParam]
        .unitValuesMap
        .keys
        .toList();
    _unitValuesMap = ConversionCategories
        .conversionCategoriesModelMap[currentConversionCategory]
        .conversionUnitObjectMap[_currentUnitType]
        .unitValuesMap;
    _fromUnit = _fromUnitList.first;
    _toUnit = _toUnitList.first;
    print('here $currentUnitTypeParam');
    notifyListeners();
  }

  Map<Conversions, String> get conversionCategoriesMap =>
      ConversionCategories.conversionCategoriesMap;
  List<Conversions> get conversionCategoriesList =>
      ConversionCategories.conversionCategories;

  Map _unitValuesMap;

  Map get unitValuesMap =>
      _unitValuesMap ??
      ConversionCategories
          .conversionCategoriesModelMap[currentConversionCategory]
          .conversionUnitObjectMap[currentUnitType]
          .unitValuesMap;

  set currentConversionCategory(Conversions conversionCategory) {
    _currentConversionCategory = conversionCategory;
    _currentUnitType = ConversionCategories
        .conversionCategoriesModelMap[_currentConversionCategory]
        .conversionUnitTypes
        .first;
    _fromUnitList = ConversionCategories
        .conversionCategoriesModelMap[currentConversionCategory]
        .conversionUnitObjectMap[_currentUnitType]
        .unitValuesMap
        .keys
        .toList();
    _toUnitList = ConversionCategories
        .conversionCategoriesModelMap[currentConversionCategory]
        .conversionUnitObjectMap[_currentUnitType]
        .unitValuesMap
        .keys
        .toList();
    _unitValuesMap = ConversionCategories
        .conversionCategoriesModelMap[currentConversionCategory]
        .conversionUnitObjectMap[_currentUnitType]
        .unitValuesMap;
    _fromUnit = _fromUnitList.first;
    _toUnit = _toUnitList.first;
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

  List get conversionUnitTypes => ConversionCategories
      .conversionCategoriesModelMap[currentConversionCategory]
      .conversionUnitTypes;

  Map get conversionStringValueMap => ConversionCategories
      .conversionCategoriesModelMap[currentConversionCategory]
      .conversionStringValueMap;

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
