import 'package:flutter/material.dart';
import 'package:oil_and_gas_unit_converter/src/ui/fix_dropdown.dart';
import 'package:oil_and_gas_unit_converter/src/ui/home_page.dart';

import 'finders.dart';

DropdownButton conversionCategoryDropdownWidget =
    conversionCategoryDropdownFinder.evaluate().single.widget as DropdownButton;

DropdownButton unitTypeDropdownWidget =
    unitTypeDropdownFinder.evaluate().single.widget as DropdownButton;
FixDropdownButton fromUnitDropdownWidget =
    fromUnitDropdownFinder.evaluate().single.widget as FixDropdownButton;

FixDropdownButton toUnitDropdownWidget =
    toUnitDropdownFinder.evaluate().single.widget as FixDropdownButton;

class HomePageWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oil and Gas Converter',
      home: HomePage(),
    );
  }
}
