import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'keys.dart';

final conversionCategoryDropdownFinder =
    getFinder(conversionCategoryDropdownKey);

final fromConversionCategoryUnitDropdownFinder =
    getFinder(fromConversionCategoryUnitDropdownKey);

final toConversionCategoryUnitDropdownFinder =
    getFinder(toConversionCategoryUnitDropdownKey);

Finder getFinder(Key key) => find.byKey(key);
