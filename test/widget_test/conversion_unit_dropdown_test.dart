import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/fluid_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/fluid_consistency.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversions_categories.dart';
import 'package:oil_and_gas_unit_converter/src/model/converter.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/fluid_units/fluid_consistency.dart';
import 'package:oil_and_gas_unit_converter/src/ui/fix_dropdown.dart';
import 'package:provider/provider.dart';

import 'widget_test_data/finders.dart';
import 'widget_test_data/widgets.dart';

void main() {
  testWidgets(
      'Conversion unit dropdowns show first unit  of first unit type of first category by default',
      (WidgetTester tester) async {
    await tester.pumpWidget(HomePageWrapper());

    expect(unitTypeDropdownFinder, findsOneWidget);

    final fromUnitEnumValue = fromUnitDropdownWidget.value;
    final toUnitEnumValue = toUnitDropdownWidget.value;

    final firstConversionCategory =
        ConversionCategories.conversionCategories.first;
    final firstUnitEnumValue = ConversionCategories
        .conversionCategoriesModelMap[firstConversionCategory]
        .conversionUnitObjectMap
        .values
        .first
        .unitValuesMap
        .keys
        .first;

    expect(fromUnitEnumValue, firstUnitEnumValue);
    expect(toUnitEnumValue, firstUnitEnumValue);
  });

  testWidgets('Conversion unit dropdowns contain unit enum values',
      (WidgetTester tester) async {
    await tester.pumpWidget(HomePageWrapper());

    final child = (find
            .byKey(Key('changeNotifierProvider'))
            .evaluate()
            .single
            .widget as ChangeNotifierProvider)
        .child;

    List unitEnumValueList = FluidConsistencyUnit().unitValuesMap.keys.toList();

    Converter converter = Converter()
      ..currentConversionCategory = Conversions.fluid
      ..currentUnitType = FluidConversions.fluidConsistency;

    await tester.pumpWidget(MaterialApp(
      home: ChangeNotifierProvider<Converter>(
        child: child,
        builder: (context) => converter,
      ),
    ));

    await tester.pumpAndSettle();

    final fromUnitDropdownEnumValueList = (find
            .byKey(Key('fromUnit'))
            .evaluate()
            .single
            .widget as FixDropdownButton)
        .items
        .map((unit) => unit.value)
        .toList();
    final toUnitDropdownEnumValueList = (find
            .byKey(Key('fromUnit'))
            .evaluate()
            .single
            .widget as FixDropdownButton)
        .items
        .map((unit) => unit.value)
        .toList();

    expect(fromUnitDropdownEnumValueList, unitEnumValueList);
    expect(toUnitDropdownEnumValueList, unitEnumValueList);
  });

  testWidgets('Tapping on a unit dropdown item changes current dropdown value',
      (WidgetTester tester) async {
    await tester.pumpWidget(HomePageWrapper());

    final child = (find
            .byKey(Key('changeNotifierProvider'))
            .evaluate()
            .single
            .widget as ChangeNotifierProvider)
        .child;

    Converter converter = Converter()
      ..currentConversionCategory = Conversions.fluid
      ..currentUnitType = FluidConversions.fluidConsistency;

    await tester.pumpWidget(MaterialApp(
      home: ChangeNotifierProvider<Converter>(
        child: child,
        builder: (context) => converter,
      ),
    ));

    await tester.pumpAndSettle();

    await tester.tap(find.byKey(Key('fromUnit')));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(Key('Pa-s^n(Pa-s^n)')).last);
    await tester.pumpAndSettle();

    final fromUnitValue = (find.byKey(Key('fromUnit')).evaluate().single.widget
            as FixDropdownButton)
        .value;
    final expectedFromUnitValue = FluidConsistency.paSn;
    expect(fromUnitValue, expectedFromUnitValue);

    await tester.tap(find.byKey(Key('toUnit')));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(Key('eq.cp(eq.cp)')).last);
    await tester.pumpAndSettle();

    final toUnitValue = (find.byKey(Key('fromUnit')).evaluate().single.widget
            as FixDropdownButton)
        .value;
    final expectedToUnitValue = FluidConsistency.paSn;
    expect(toUnitValue, expectedToUnitValue);
  });
}
