import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/fluid_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/fluid_units/crude_oil.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/fluid_units/fluid_consistency.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/fluid_units/fluid_velocity.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/fluid_units/fluid_yield_point.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/fluid_units/liquid_production_rate.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/fluid_units/viscosiity.dart';

class FluidConversionType extends Conversion {
  Map conversionStringValueMap = conversionsValuesMap;

  List conversionUnitTypes = FluidConversions.values;
  Unit getUnit<FluidConversions>(FluidConversions fluidConversion) =>
      conversionUnitObjectMap[fluidConversion];

  Map<dynamic, Unit> conversionUnitObjectMap = {
    FluidConversions.crudeOil: CrudeOilUnit(),
    FluidConversions.fluidConsistency: FluidConsistencyUnit(),
    FluidConversions.fluidVelocity: FluidVelocityUnit(),
    FluidConversions.fluidYieldPoint: FluidYieldPointUnit(),
    FluidConversions.liquidProductionRate: LiquidProductionRateUnit(),
    FluidConversions.viscosity: ViscosityUnit(),
  };
}
