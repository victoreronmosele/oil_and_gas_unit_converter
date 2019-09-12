import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oil_and_gas_unit_converter/src/data/app_colors.dart';
import 'package:oil_and_gas_unit_converter/src/data/app_constants.dart';
import 'package:oil_and_gas_unit_converter/src/data/app_dimens.dart';

class RoundConverterIcon extends StatelessWidget {
  const RoundConverterIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      shape: CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColors.COLOR_GRADIENT,
        )),
        child: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.compare_arrows,
              size: ScreenUtil.getInstance().setHeight(60.0),
              color: Colors.white,
            )),
      ),
    );
  }
}
