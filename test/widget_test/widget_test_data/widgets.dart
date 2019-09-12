import 'package:flutter/material.dart';
import 'package:oil_and_gas_unit_converter/src/screens/home_page.dart';
import 'package:oil_and_gas_unit_converter/src/widgets/fix_dropdown.dart';

import 'finders.dart';

class Widgets {
  static final DropdownButton conversionCategoryDropdownWidget =
      conversionCategoryDropdownFinder.evaluate().single.widget
          as DropdownButton;

  static final DropdownButton unitTypeDropdownWidget =
      unitTypeDropdownFinder.evaluate().single.widget as DropdownButton;
  static final FixDropdownButton fromUnitDropdownWidget =
      fromUnitDropdownFinder.evaluate().single.widget as FixDropdownButton;

  static final FixDropdownButton toUnitDropdownWidget =
      toUnitDropdownFinder.evaluate().single.widget as FixDropdownButton;
}

class HomePageWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oil and Gas Converter',
      home: HomePage(),
    );
  }
}
