import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/drilling_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/drilling_units/axial_dampling_coefficient.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/drilling_units/axial_spring_constant.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/drilling_units/dogleg.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/drilling_units/drilling_rate.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/drilling_units/footage_cost.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/drilling_units/mud_weight.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/drilling_units/pressure_gradient.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/drilling_units/pumping_and_flow_rate.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/drilling_units/torsional_dampling_coefficient.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/drilling_units/torsional_spring_constant.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/drilling_units/yield_slurry.dart';

class DrillingConversionType  extends Conversion{
  Map conversionStringValueMap = conversionsValuesMap;

  List conversionUnitTypes = DrillingConversions.values;
  Unit getUnit<DrillingConversions>(DrillingConversions drillingConversion) =>
      conversionUnitObjectMap[drillingConversion];

  Map<dynamic, Unit> conversionUnitObjectMap = {
  DrillingConversions.axialDamplingCoefficient : AxialDamplingCoefficientUnit(),
  DrillingConversions.axialSpringConstant : AxialSpringConstantUnit(),
  DrillingConversions.dogleg : DoglegUnit(),
  DrillingConversions.drillingRate : DrillingRateUnit(),
  DrillingConversions.footageCost : FootageCostUnit(),
  DrillingConversions.mudWeight :MudWeightUnit() ,
  DrillingConversions.pressureGradient : PressureGradientUnit(),
  DrillingConversions.pumpingAndFlowRate : PumpingAndFlowRateUnit(),
  DrillingConversions.torsionalDamplingCoefficient : TorsionalDamplingCoefficientUnit(),
  DrillingConversions.torsionalSpringConstant : TorsionalSpringConstantUnit(),
  DrillingConversions.yieldSlurry : YieldSlurryUnit(),
  };
}