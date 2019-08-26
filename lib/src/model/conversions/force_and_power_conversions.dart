import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/force_and_power_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/force_and_power_units/electric_current.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/force_and_power_units/force.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/force_and_power_units/fracture_conductivity.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/force_and_power_units/fuel_volume.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/force_and_power_units/heat_capacity.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/force_and_power_units/heat_conductivity.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/force_and_power_units/power.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/force_and_power_units/power_arew.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/force_and_power_units/velocity.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/force_and_power_units/velocity_angular.dart';

class ForceAndPowerConversionType extends Conversion {
  Map conversionStringValueMap = forceAndPowerConversionsValuesMap;

  List conversionUnitTypes = ForceAndPowerConversions.values;
  Unit getUnit<ForceAndPowerConversions>(
          ForceAndPowerConversions forceAndPowerConversion) =>
      conversionUnitObjectMap[forceAndPowerConversion];

  Map<dynamic, Unit> conversionUnitObjectMap = {
    ForceAndPowerConversions.electricCurrent: ElectricCurrentUnit(),
    ForceAndPowerConversions.force: ForceUnit(),
    ForceAndPowerConversions.fractureConductivity: FractureConductivityUnit(),
    ForceAndPowerConversions.fuelVolume: FuelVolumeUnit(),
    ForceAndPowerConversions.heatCapacity: HeatCapacityUnit(),
    ForceAndPowerConversions.heatConductivity: HeatConductivityUnit(),
    ForceAndPowerConversions.power: PowerUnit(),
    ForceAndPowerConversions.powerArew: PowerArewUnit(),
    ForceAndPowerConversions.velocity: VelocityUnit(),
    ForceAndPowerConversions.velocityAngular: VelocityAngularUnit(),
  };
}
