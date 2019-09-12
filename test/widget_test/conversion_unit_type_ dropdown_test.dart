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

    final unitTypeValue = Widgets.unitTypeDropdownWidget.value;

    final firstConversionCategory =
        ConversionCategories.conversionCategories.first;
    final firstUnitType = ConversionCategories
        .conversionCategoriesModelMap[firstConversionCategory]
        .conversionUnitTypes
        .first;

    expect(unitTypeValue, firstUnitType);
  });

  testWidgets('Unit type dropdown contain correct unit type string values',
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

  testWidgets('Unit type dropdown contain correct unit type enum values',
      (WidgetTester tester) async {
    await tester.pumpWidget(HomePageWrapper());
    await tester.tap(conversionCategoryDropdownFinder);
    await tester.pumpAndSettle();

    final conversionCategory = ConversionCategories.conversionCategories
        .elementAt(
            Random().nextInt(ConversionCategories.conversionCategories.length));

    final conversionCategoryString =
        ConversionCategories.conversionCategoriesMap[conversionCategory];
    Finder conversionCategorydropDownMenuItemFinder =
        getFinder(Key(conversionCategoryString));

    await tester.tap(conversionCategorydropDownMenuItemFinder.last);

    await tester.pumpAndSettle();

    final unitTypeDropdownEnumValueList =
        (unitTypeDropdownFinder.evaluate().single.widget as DropdownButton)
            .items
            .map((item) => item.value)
            .toList();

    final unitTypeEnumValueList = ConversionCategories
        .conversionCategoriesModelMap[conversionCategory]
        .conversionStringValueMap
        .keys
        .toList();

    expect(unitTypeDropdownEnumValueList, unitTypeEnumValueList);
  });

  testWidgets(
      'Tapping on a unit type dropdown item changes current dropdown value',
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

    final unitTypeValue = ConversionCategories
        .conversionCategoriesModelMap[conversionCategory].conversionUnitTypes
        .elementAt(
            Random().nextInt(ConversionCategories.conversionCategories.length));

    final unitTypeString = ConversionCategories
        .conversionCategoriesModelMap[conversionCategory]
        .conversionStringValueMap[unitTypeValue];

    Finder unitTypeDropDownMenuItemFinder = getFinder(Key(unitTypeString));

    await tester.tap(unitTypeDropDownMenuItemFinder.last);
    await tester.pumpAndSettle();

    var unitTypeDropdownCurrentValue =
        (unitTypeDropdownFinder.evaluate().single.widget as DropdownButton)
            .value;

    expect(unitTypeDropdownCurrentValue, unitTypeValue);
  });
}
