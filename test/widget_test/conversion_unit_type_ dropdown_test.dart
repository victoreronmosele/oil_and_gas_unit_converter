import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions_categories.dart';

import 'widget_test_data/finders.dart';
import 'widget_test_data/widgets.dart';

//TODO Remove Random() from tests and implement test for every item
void main() {
  testWidgets(
      'Conversion unit type dropdown shows first unit type of first category by default',
      (WidgetTester tester) async {
    await tester.pumpWidget(HomePageWrapper());
    expect(unitTypeDropdownFinder, findsOneWidget);

    final unitTypeValue = unitTypeDropdownWidget.value;

    final firstConversionCategory =
        ConversionCategories.conversionCategories.first;
    final firstUnitType = ConversionCategories
        .conversionCategoriesModelMap[firstConversionCategory]
        .conversionUnitTypes
        .first;

    expect(unitTypeValue, firstUnitType);
  });

  testWidgets('Unit dropdown contain correct unit string values',
      (WidgetTester tester) async {
    await tester.pumpWidget(HomePageWrapper());
    await tester.tap(conversionCategoryDropdownFinder);
    await tester.pumpAndSettle();

    final conversionCategory = ConversionCategories.conversionCategories
        .elementAt(
            Random().nextInt(ConversionCategories.conversionCategories.length));

    final conversionCategoryString =
        ConversionCategories.conversionCategoriesMap[conversionCategory];
    Finder dropDownMenuItemFinder = getFinder(Key(conversionCategoryString));

    await tester.tap(dropDownMenuItemFinder.last);

    await tester.pumpAndSettle();

    final unitTypeDropdownTextValueList =
        (unitTypeDropdownFinder.evaluate().single.widget as DropdownButton)
            .items
            .map((item) => (item.child as Text).data)
            .toList();

    final unitStringValueList = ConversionCategories
        .conversionCategoriesModelMap[conversionCategory]
        .conversionStringValueMap
        .values
        .toList();

    expect(unitTypeDropdownTextValueList, unitStringValueList);
  });

  testWidgets('Unit dropdown contain correct unit enum values',
      (WidgetTester tester) async {
    await tester.pumpWidget(HomePageWrapper());
    await tester.tap(conversionCategoryDropdownFinder);
    await tester.pumpAndSettle();

    final conversionCategory = ConversionCategories.conversionCategories
        .elementAt(
            Random().nextInt(ConversionCategories.conversionCategories.length));

    final conversionCategoryString =
        ConversionCategories.conversionCategoriesMap[conversionCategory];
    Finder dropDownMenuItemFinder = getFinder(Key(conversionCategoryString));

    await tester.tap(dropDownMenuItemFinder.last);

    await tester.pumpAndSettle();

    final fromUnitDropdownEnumValueList =
        (unitTypeDropdownFinder.evaluate().single.widget as DropdownButton)
            .items
            .map((item) => item.value)
            .toList();

    final unitEnumValueList = ConversionCategories
        .conversionCategoriesModelMap[conversionCategory]
        .conversionStringValueMap
        .keys
        .toList();

    expect(fromUnitDropdownEnumValueList, unitEnumValueList);
  });

  testWidgets('Tapping on a unit dropdown item changes current dropdown value',
      (WidgetTester tester) async {
    await tester.pumpWidget(HomePageWrapper());
    await tester.tap(conversionCategoryDropdownFinder);
    await tester.pumpAndSettle();

    final conversionCategory = ConversionCategories.conversionCategories
        .elementAt(
            Random().nextInt(ConversionCategories.conversionCategories.length));

    final conversionCategoryString =
        ConversionCategories.conversionCategoriesMap[conversionCategory];
    Finder dropDownMenuItemFinder = getFinder(Key(conversionCategoryString));

    await tester.tap(dropDownMenuItemFinder.last);

    await tester.pumpAndSettle();

    await tester.tap(unitTypeDropdownFinder);

    await tester.pumpAndSettle();

    final unitValue = ConversionCategories
        .conversionCategoriesModelMap[conversionCategory].conversionUnitTypes
        .elementAt(
            Random().nextInt(ConversionCategories.conversionCategories.length));

    final unitString = ConversionCategories
        .conversionCategoriesModelMap[conversionCategory]
        .conversionStringValueMap[unitValue];

    Finder unitDropDownMenuItemFinder = getFinder(Key(unitString));

    await tester.tap(unitDropDownMenuItemFinder.last);
    await tester.pumpAndSettle();

    var unitDropdownCurrentValue =
        (unitTypeDropdownFinder.evaluate().single.widget as DropdownButton)
            .value;

    expect(unitDropdownCurrentValue, unitValue);
  });
}
