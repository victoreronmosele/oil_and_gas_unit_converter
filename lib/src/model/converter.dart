import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:oil_and_gas_unit_converter/src/data/app_dimens.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions_categories.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/conversion_operation.dart';
import 'package:oil_and_gas_unit_converter/src/data/app_constants.dart';

class Converter with ChangeNotifier {
  Conversions _currentConversionCategory;

  Unit _currentUnitObject;
  Unit get currentUnitObject =>
      _currentUnitObject ??
      ConversionCategories
          .conversionCategoriesModelMap[currentConversionCategory]
          .conversionUnitObjectMap[currentUnitType];

  num _fromUnitText;
  num _toUnitText;

  String get fromUnitText =>
      (_fromUnitText ?? AppConstants.DEFAULT_UNIT_VALUE).toString();

  String get toUnitText {
    ConversionOperation conversionOperation = ConversionOperation(
        from: fromUnit,
        to: toUnit,
        unit: currentUnitObject,
        valueToBeConverted: num.tryParse(fromUnitText));

    _toUnitText = _getConvertedValue(conversionOperation);

    return _toUnitText.toString();
  }

  set fromUnitText(String fromUnitText) {
    num fromUnitNumber = num.tryParse(fromUnitText);
    _fromUnitText = fromUnitNumber;
    notifyListeners();
  }

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
    _currentUnitObject = ConversionCategories
        .conversionCategoriesModelMap[currentConversionCategory]
        .conversionUnitObjectMap[_currentUnitType];
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
    _currentUnitObject = ConversionCategories
        .conversionCategoriesModelMap[currentConversionCategory]
        .conversionUnitObjectMap[_currentUnitType];

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

  num _getFactor<T>({@required T from, @required T to, @required Unit unit}) {
    num factor;
    factor = unit.unitFactorMap[to] / unit.unitFactorMap[from];

    return factor;
  }
}
