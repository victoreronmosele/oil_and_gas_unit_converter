import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oil_and_gas_unit_converter/src/data/keys.dart';

final conversionCategoryDropdownFinder =
    getFinder(conversionCategoryDropdownKey);

final unitTypeDropdownFinder = getFinder(unitTypeDropdownKey);

final fromUnitDropdownFinder = getFinder(fromUnitDropdownKey);
final toUnitDropdownFinder = getFinder(toUnitDropdownKey);

Finder getFinder(Key key) => find.byKey(key);
