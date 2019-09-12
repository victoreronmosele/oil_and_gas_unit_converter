import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oil_and_gas_unit_converter/src/data/app_colors.dart';
import 'package:oil_and_gas_unit_converter/src/data/app_dimens.dart';
import 'package:oil_and_gas_unit_converter/src/data/app_strings.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/keys.dart';
import 'package:oil_and_gas_unit_converter/src/model/converter.dart';

import 'package:oil_and_gas_unit_converter/src/widgets/round_converter_icon.dart';
import 'package:oil_and_gas_unit_converter/src/widgets/fix_dropdown.dart'
    as fixDropdown;
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = AppStrings.APP_TITLE;
  final double screenPadding = AppDimens.SCREEN_PADDING;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil()..init(context);

    return ChangeNotifierProvider<Converter>(
      builder: (context) => Converter(),
      key: WidgetKeys.changeNotifierProviderKey,
      child: Scaffold(
        backgroundColor: AppColors.BACKGROUND_COLOR,
        //TODO Add drawer for Android and bottom tab for iOS
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(title),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(screenPadding),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: ScreenUtil.getInstance()
                          .setHeight(AppDimens.CONVERSION_BOTTOM_PADDING),
                    ),
                    child: ConversionTopPanel(),
                  ),
                  ConversionCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ConversionTopPanel extends StatelessWidget {
  const ConversionTopPanel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final converter = Provider.of<Converter>(context);
    final currentConversionCategory = converter.currentConversionCategory;
    final conversionCategoriesList = converter.conversionCategoriesList;
    final conversionCategoriesMap = converter.conversionCategoriesMap;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          AppStrings.CONVERT,
          style: TextStyle(
            color: Colors.white,
            fontSize: ScreenUtil(allowFontScaling: false).setSp(80),
          ),
        ),
        SizedBox(
          width: ScreenUtil.getInstance().setWidth(50.0),
        ),
        Flexible(
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500, width: 0.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              child: DropdownButton<Conversions>(
                  //Value is set to null and the hint is used to display selected dropdown item
                  //so as to use different TextStyle properties for the selected value and the dropdown items
                  //And the default behaviour is that both make use of the same TextStyle property
                  value: null,
                  key: WidgetKeys.conversionCategoryDropdownKey,
                  isDense: true,
                  iconEnabledColor: Colors.white54,
                  underline: Container(),
                  onChanged: (value) {
                    converter.currentConversionCategory = value;
                  },
                  hint: Text(
                    conversionCategoriesMap[currentConversionCategory],
                    style: TextStyle(color: Colors.white),
                  ),
                  items: conversionCategoriesList.map((conversionCategory) {
                    String conversionCategoryText =
                        conversionCategoriesMap[conversionCategory];

                    return DropdownMenuItem(
                      key: Key(conversionCategoryText),
                      value: conversionCategory,
                      child: Text(
                        conversionCategoryText,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList()),
            ),
          ),
        ),
      ],
    );
  }
}

class ConversionCard extends StatelessWidget {
  ConversionCard({
    Key key,
  }) : super(key: key);

  final double screenPadding = AppDimens.SCREEN_PADDING;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0.0),
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: ScreenUtil.getInstance()
                    .setWidth(ScreenUtil().width - (2 * screenPadding)),
                minWidth: ScreenUtil.getInstance()
                    .setWidth(ScreenUtil().width - (2 * screenPadding)),
                minHeight: ScreenUtil.getInstance().setWidth(
                        ((ScreenUtil().width - (2 * screenPadding)) / 2)) -
                    (ScreenUtil.getInstance().setHeight(120)),
              ),
              child: ConversionBox(
                top: true,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Divider(),
                Align(
                  alignment: Alignment(0.8, 0.0),
                  child: SizedBox(
                      height: ScreenUtil.getInstance().setHeight(120),
                      width: ScreenUtil.getInstance().setHeight(120),
                      child: RoundConverterIcon()),
                )
              ],
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: ScreenUtil.getInstance()
                    .setWidth(ScreenUtil().width - (2 * screenPadding)),
                minWidth: ScreenUtil.getInstance()
                    .setWidth(ScreenUtil().width - (2 * screenPadding)),
                minHeight: ScreenUtil.getInstance().setWidth(
                        ((ScreenUtil().width - (2 * screenPadding)) / 2)) -
                    (ScreenUtil.getInstance().setHeight(120)),
              ),
              child: ConversionBox(),
            ),
          ],
        ),
      ),
    );
  }
}

class ConversionBox extends StatefulWidget {
  ConversionBox({
    Key key,
    this.top = false,
  }) : super(key: key);

  final bool top;

  @override
  _ConversionBoxState createState() => _ConversionBoxState();
}

class _ConversionBoxState extends State<ConversionBox> {
  final double screenPadding = AppDimens.SCREEN_PADDING;
  TextEditingController fromTextEditingController;
  TextEditingController toTextEditingController;

  @override
  void initState() {
    super.initState();
    fromTextEditingController = TextEditingController();
    toTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    fromTextEditingController.dispose();
    toTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final converter = Provider.of<Converter>(context);
    List conversionUnitTypes = converter.conversionUnitTypes;
    Map conversionStringValueMap = converter.conversionStringValueMap;
    dynamic conversionUnitTypeValue = converter.currentUnitType;
    List fromUnitList = converter.fromUnitList;
    dynamic fromUnit = converter.fromUnit;
    List toUnitList = converter.toUnitList;
    dynamic toUnit = converter.toUnit;
    Map unitValuesMap = converter.unitValuesMap;

    fromTextEditingController.value = fromTextEditingController.value
        .copyWith(text: converter.fromUnitText.toString());
    toTextEditingController.text = converter.toUnitText.toString();
    return Padding(
      padding: EdgeInsets.only(
          top: widget.top == true ? 1.5 * screenPadding : screenPadding / 4,
          bottom: widget.top == true ? screenPadding / 4 : 1.5 * screenPadding,
          right: 1.5 * screenPadding,
          left: 1.5 * screenPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          widget.top == true
              ? Row(
                  children: <Widget>[
                    Expanded(
                      child: DropdownButton(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:
                                ScreenUtil(allowFontScaling: false).setSp(50),
                          ),
                          value: conversionUnitTypeValue,
                          key: WidgetKeys.unitTypeDropdownKey,
                          isDense: true,
                          isExpanded: true,
                          iconEnabledColor: Colors.grey.shade800,
                          underline: Container(),
                          onChanged: (value) {
                            converter.currentUnitType = value;
                          },
                          items: conversionUnitTypes.map((conversionUnitType) {
                            String conversionUnitTypeString =
                                conversionStringValueMap[conversionUnitType];
                            return DropdownMenuItem(
                              value: conversionUnitType,
                              key: Key(conversionUnitTypeString),
                              child: Text(
                                conversionUnitTypeString,
                              ),
                            );
                          }).toList()),
                    ),
                  ],
                )
              : Container(),
          SizedBox(
            height: screenPadding,
          ),
          TextField(
            decoration: InputDecoration.collapsed(hintText: null),
            controller: widget.top == true
                ? fromTextEditingController
                : toTextEditingController,
            onChanged: (value) {
              print(fromTextEditingController.selection);
              if (widget.top == true) {
                converter.fromUnitText = value;
              }
            },
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
            enabled: widget.top == true ? true : false,
            key: widget.top == true
                ? WidgetKeys.fromUnitText
                : WidgetKeys.toUnitText,
            style: TextStyle(
              fontSize: ScreenUtil(allowFontScaling: false).setSp(85),
            ),
          ),
          SizedBox(
            height: screenPadding / 2,
          ),
          fixDropdown.FixDropdownButton(
            key: widget.top == true ? WidgetKeys.fromUnit : WidgetKeys.toUnit,
            style: TextStyle(fontSize: 5, color: Colors.black),
            underline: Container(),
            items: (widget.top == true ? fromUnitList : toUnitList).map((unit) {
              String unitString = unitValuesMap[unit];
              return fixDropdown.FixDropdownMenuItem(
                key: Key(unitString),
                value: unit,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    unitString,
                    style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: false).setSp(40),
                    ),
                  ),
                ),
              );
            }).toList(),
            value: widget.top == true ? fromUnit : toUnit,
            onChanged: (f) {
              widget.top == true
                  ? converter.fromUnit = f
                  : converter.toUnit = f;
            },
          )
        ],
      ),
    );
  }
}
