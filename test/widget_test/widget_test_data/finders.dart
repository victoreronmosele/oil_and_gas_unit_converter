import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'keys.dart';

final conversionCategoryDropdownFinder =
    find.byKey(conversionCategoryDropdownKey);


Finder getFinder(Key key) => find.byKey(key);
