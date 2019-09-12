import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions_categories.dart';

import 'widget_test_data/finders.dart';
import 'widget_test_data/widgets.dart';

//TODO Remove Random() from tests and implement test for every item
void main() {
  group('Conversion categories dropdown', () {
    testWidgets(
        'Conversion categories dropdown shows first conversion category by default',
        (WidgetTester tester) async {
      await tester.pumpWidget(HomePageWrapper());

      expect(conversionCategoryDropdownFinder, findsOneWidget);

      final conversionCategoryDropdownCurrentValue =
          (Widgets.conversionCategoryDropdownWidget.hint as Text).data;

      final firstConversionCategory =
          ConversionCategories.conversionCategories.first;

      final firstConversionCategoryString =
          ConversionCategories.conversionCategoriesMap[firstConversionCategory];

      expect(conversionCategoryDropdownCurrentValue,
          firstConversionCategoryString);
    });

    testWidgets(
        'Conversion categories dropdown contains correct categories enum values',
        (WidgetTester tester) async {
      await tester.pumpWidget(HomePageWrapper());
      final conversionCategoryDropdownValueList = Widgets
          .conversionCategoryDropdownWidget.items
          .map((item) => item.value);

      final conversionCategoryEnumValueList =
          ConversionCategories.conversionCategories;

      expect(
          conversionCategoryDropdownValueList, conversionCategoryEnumValueList);
    });

    testWidgets(
        'Conversion categories dropdown contains correct categories string values',
        (WidgetTester tester) async {
      await tester.pumpWidget(HomePageWrapper());
      final conversionCategoryDropdownTextValueList = Widgets
          .conversionCategoryDropdownWidget.items
          .map((item) => (item.child as Text).data);

      final conversionCategoryStringValueList =
          ConversionCategories.conversionCategoriesMap.values;

      expect(conversionCategoryDropdownTextValueList,
          conversionCategoryStringValueList);
    });

    testWidgets(
        'Tapping on a conversion categories dropdown item changes current dropdown value',
        (WidgetTester tester) async {
      await tester.pumpWidget(HomePageWrapper());

      await tester.tap(conversionCategoryDropdownFinder);

      await tester.pumpAndSettle();

      final conversionCategory = ConversionCategories.conversionCategories
          .elementAt(Random()
              .nextInt(ConversionCategories.conversionCategories.length));

      final conversionCategoryString =
          ConversionCategories.conversionCategoriesMap[conversionCategory];

      Finder dropDownMenuItemFinder = getFinder(Key(conversionCategoryString));

      await tester.tap(dropDownMenuItemFinder.last);

      await tester.pumpAndSettle();

      var conversionCategoryDropdownCurrentValue =
          (((conversionCategoryDropdownFinder.evaluate().single.widget
                      as DropdownButton)
                  .hint) as Text)
              .data;

      expect(conversionCategoryDropdownCurrentValue, conversionCategoryString);
    });

    testWidgets(
        'Tapping on a conversion categories drop down item changes populates unit type dropdown button correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(HomePageWrapper());

      await tester.tap(conversionCategoryDropdownFinder);

      await tester.pumpAndSettle();
      final conversionCategory = ConversionCategories.conversionCategories
          .elementAt(Random()
              .nextInt(ConversionCategories.conversionCategories.length));

      final conversionCategoryString =
          ConversionCategories.conversionCategoriesMap[conversionCategory];

      Finder dropDownMenuItemFinder = getFinder(Key(conversionCategoryString));

      await tester.tap(dropDownMenuItemFinder.last);

      await tester.pumpAndSettle();

      var unitTypeDropdownValueList =
          (unitTypeDropdownFinder.evaluate().single.widget as DropdownButton)
              .items
              .map((item) => item.value)
              .toList();

      var conversionTypeModel =
          ConversionCategories.conversionCategoriesModelMap[conversionCategory];

      var conversionUnitTypeList = conversionTypeModel.conversionUnitTypes;

      expect(unitTypeDropdownValueList, conversionUnitTypeList);
    });
  });
}
