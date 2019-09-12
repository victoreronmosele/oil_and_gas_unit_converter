import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oil_and_gas_unit_converter/src/data/keys.dart';

final conversionCategoryDropdownFinder =
    getFinder(WidgetKeys.conversionCategoryDropdownKey);

final unitTypeDropdownFinder = getFinder(WidgetKeys.unitTypeDropdownKey);

final fromUnitDropdownFinder = getFinder(WidgetKeys.fromUnitDropdownKey);
final toUnitDropdownFinder = getFinder(WidgetKeys.toUnitDropdownKey);

Finder getFinder(Key key) => find.byKey(key);
