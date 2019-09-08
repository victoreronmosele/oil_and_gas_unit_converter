import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/gas_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/gas_units/specific_volume.dart';
import 'package:oil_and_gas_unit_converter/src/model/converter.dart';
import 'package:oil_and_gas_unit_converter/src/utils/app_constants.dart';
import 'package:provider/provider.dart';

import 'widget_test_data/widgets.dart';

void main() {
  testWidgets('From Unit text value is DEFAULT_UNIT_VALUE by default start',
      (WidgetTester tester) async {
    await tester.pumpWidget(HomePageWrapper());
    await tester.pumpAndSettle();

    String fromUnitText =
        (find.byKey(Key('fromUnitText')).evaluate().single.widget as TextField)
            .controller
            .text;

    String defaultUnitValue = AppConstants.DEFAULT_UNIT_VALUE.toString();

    expect(fromUnitText, defaultUnitValue);
  });

  testWidgets(
      'To Unit text value is the result of the correct conversion of the from unit value',
      (WidgetTester tester) async {
    await tester.pumpWidget(HomePageWrapper());

    final child = (find
            .byKey(Key('changeNotifierProvider'))
            .evaluate()
            .single
            .widget as ChangeNotifierProvider)
        .child;

    Converter converter = Converter()
      ..currentConversionCategory = Conversions.gas
      ..currentUnitType = GasConversions.specificVolume
      ..fromUnit = SpecificVolume.barrelsPerTonUK
      ..toUnit = SpecificVolume.literPerGram;

    await tester.pumpWidget(MaterialApp(
      home: ChangeNotifierProvider<Converter>(
        child: child,
        builder: (context) => converter,
      ),
    ));

    await tester.pumpAndSettle();

    await tester.enterText(find.byKey(Key('fromUnitText')), '500');
    await tester.pumpAndSettle();

    String toUnitText =
        (find.byKey(Key('toUnitText')).evaluate().single.widget as TextField)
            .controller
            .text;

    String convertedResult = '0.07825';

    expect(toUnitText, convertedResult);
  });
}
