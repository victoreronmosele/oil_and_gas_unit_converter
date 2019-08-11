import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/basic_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/drilling_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/fluid_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/force_and_power_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/gas_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/production_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/acceleration.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/angle.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/area.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/cost_rate.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/decimal_number_prefix.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/density.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/distributed_force.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/energy.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/flowrate_mass.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/flowrate_volume.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/frequency.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/length.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/momentum.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/pressure.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/time.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/torque.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/volume.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/weight.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/weight_per_unit_length.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/crude_oil.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/fluid_consistency.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/fluid_velocity.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/fluid_yield_point.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/liquid_production_rate.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/viscosiity.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/force_and_power_units/electric_current.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/force_and_power_units/fracture_conductivity.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/force_and_power_units/fuel_volume.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/force_and_power_units/heat_capacity.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/force_and_power_units/heat_conductivity.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/force_and_power_units/power.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/force_and_power_units/power_arew.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/force_and_power_units/velocity.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/force_and_power_units/velocity_angular.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/gas_units/gas_injection_rate.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/gas_units/gas_production_index.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/gas_units/gas_production_rate.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/gas_units/gas_volume.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/gas_units/liquefied_natural_gas.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/gas_units/specific_volume.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/gas_units/volume.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/force_and_power_units/force.dart';
import 'package:test/test.dart';

void main() {
  group('Conversion general tests', () {
    test('All enums have string values in the conversion map', () {
      bool allConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToString<Conversions>(
              Conversions.values, conversionsValuesMap);
      bool allBasicConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToString<BasicConversions>(
              BasicConversions.values, basicConversionsValuesMap);
      bool allGasConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToString<GasConversions>(
              GasConversions.values, gasConversionsValuesMap);
      bool allFluidConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToString<FluidConversions>(
              FluidConversions.values, fluidConversionValuesMap);
      bool allForceAndPowerConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToString<ForceAndPowerConversions>(
              ForceAndPowerConversions.values,
              forceAndPowerConversionsValuesMap);
      bool allDrillingConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToString<DrillingConversions>(
              DrillingConversions.values, drillingConversionsValuesMap);
      bool allProductionConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToString<ProductionConversions>(
              ProductionConversions.values, productionConversionsValuesMap);
      bool allAccelerationEnumsAreMapped =
          areAllEnumsValuesMappedToString<Acceleration>(
              Acceleration.values, accelerationValuesMap);
      bool allAngleEnumsAreMapped =
          areAllEnumsValuesMappedToString<Angle>(Angle.values, angleValuesMap);
      bool allAreaEnumsAreMapped =
          areAllEnumsValuesMappedToString<Area>(Area.values, areaValuesMap);
      bool allCostRateEnumsAreMapped =
          areAllEnumsValuesMappedToString<CostRate>(
              CostRate.values, costRateValuesMap);
      bool allDecimalNumberPrefixEnumsAreMapped =
          areAllEnumsValuesMappedToString<DecimalNumberPrefix>(
              DecimalNumberPrefix.values, decimalNumberPrefixValuesMap);
      bool allDensityEnumsAreMapped = areAllEnumsValuesMappedToString<Density>(
          Density.values, densityValuesMap);
      bool allDistributedForcesEnumsAreMapped =
          areAllEnumsValuesMappedToString<DistributedForce>(
              DistributedForce.values, distributedForceValuesMap);
      bool allEnergyEnumsAreMapped = areAllEnumsValuesMappedToString<Energy>(
          Energy.values, energyValuesMap);
      bool allFlowrateMassEnumsAreMapped =
          areAllEnumsValuesMappedToString<FlowrateMass>(
              FlowrateMass.values, flowrateMassValuesMap);
      bool allFlowrateVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToString<FlowrateVolume>(
              FlowrateVolume.values, flowrateVolumeValuesMap);
      bool allFrequencyEnumsAreMapped =
          areAllEnumsValuesMappedToString<Frequency>(
              Frequency.values, frequencyValuesMap);
      bool allLengthEnumsAreMapped = areAllEnumsValuesMappedToString<Length>(
          Length.values, lengthValuesMap);
      bool allMomentumEnumsAreMapped =
          areAllEnumsValuesMappedToString<Momentum>(
              Momentum.values, momentumValuesMap);
      bool allPressureEnumsAreMapped =
          areAllEnumsValuesMappedToString<Pressure>(
              Pressure.values, pressureValuesMap);
      bool allTimeEnumsAreMapped =
          areAllEnumsValuesMappedToString<Time>(Time.values, timeValuesMap);
      bool allTorqueEnumsAreMapped = areAllEnumsValuesMappedToString<Torque>(
          Torque.values, torqueValuesMap);
      bool allVolumeBasicEnumsAreMapped =
          areAllEnumsValuesMappedToString<VolumeBasic>(
              VolumeBasic.values, volumeBasicValuesMap);
      bool allWeightEnumsAreMapped = areAllEnumsValuesMappedToString<Weight>(
          Weight.values, weightValuesMap);
      bool allWeightPerUnitLengthEnumsAreMapped =
          areAllEnumsValuesMappedToString<WeightPerUnitLength>(
              WeightPerUnitLength.values, weightPerUnitLengthValuesMap);
      bool allGasInjectionRateEnumsAreMapped =
          areAllEnumsValuesMappedToString<GasInjectionRate>(
              GasInjectionRate.values, gasInjectionRateValuesMap);
      bool allGasProductionIndexEnumsAreMapped =
          areAllEnumsValuesMappedToString<GasProductionIndex>(
              GasProductionIndex.values, gasProductionIndexValuesMap);
      bool allGasVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToString<GasVolume>(
              GasVolume.values, gasVolumeValuesMap);
      bool allGasProductionRateEnumsAreMapped =
          areAllEnumsValuesMappedToString<GasProductionRate>(
              GasProductionRate.values, gasProductionRateValuesMap);
      bool allLiquefiedNaturalGasEnumsAreMapped =
          areAllEnumsValuesMappedToString<LiquefiedNaturalGas>(
              LiquefiedNaturalGas.values, liquefiedNaturalGasValuesMap);
      bool allSpecificVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToString<SpecificVolume>(
              SpecificVolume.values, specificVolumeValuesMap);
      bool allVolumeGasEnumsAreMapped =
          areAllEnumsValuesMappedToString<VolumeGas>(
              VolumeGas.values, volumeGasValuesMap);
      bool allCrudeOilEnumsAreMapped =
          areAllEnumsValuesMappedToString<CrudeOil>(
              CrudeOil.values, crudeOilValuesMap);
      bool allFluidConsistencyEnumsAreMapped =
          areAllEnumsValuesMappedToString<FluidConsistency>(
              FluidConsistency.values, fluidConsistencyValuesMap);
      bool allFluidVelocityEnumsAreMapped =
          areAllEnumsValuesMappedToString<FluidVelocity>(
              FluidVelocity.values, fluidVelocityValuesMap);
      bool allFluidYieldPointEnumsAreMapped =
          areAllEnumsValuesMappedToString<FluidYieldPoint>(
              FluidYieldPoint.values, fluidYieldPointValuesMap);
      bool allLiquidProductionRateEnumsAreMapped =
          areAllEnumsValuesMappedToString<LiquidProductionRate>(
              LiquidProductionRate.values, liquidProductionRateValuesMap);
      bool allViscosityEnumsAreMapped =
          areAllEnumsValuesMappedToString<Viscosity>(
              Viscosity.values, viscosityValuesMap);

      bool allElectricCurrentEnumsAreMapped =
          areAllEnumsValuesMappedToString<ElectricCurrent>(
              ElectricCurrent.values, electricCurrentValuesMap);
      bool allForceEnumsAreMapped =
          areAllEnumsValuesMappedToString<Force>(Force.values, forceValuesMap);
      bool allFractureConductivityEnumsAreMapped =
          areAllEnumsValuesMappedToString<FractureConductivity>(
              FractureConductivity.values, fractureConductivityValuesMap);
      bool allFuelVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToString<FuelVolume>(
              FuelVolume.values, fuelVolumeValuesMap);
      bool allHeatCapacityEnumsAreMapped =
          areAllEnumsValuesMappedToString<HeatCapacity>(
              HeatCapacity.values, heatCapacityValuesMap);
      bool allHeatConductivityEnumsAreMapped =
          areAllEnumsValuesMappedToString<HeatConductivity>(
              HeatConductivity.values, heatConductivityValuesMap);
      bool allPowerEnumsAreMapped =
          areAllEnumsValuesMappedToString<Power>(Power.values, powerValuesMap);
      bool allPowerArewEnumsAreMapped =
          areAllEnumsValuesMappedToString<PowerArew>(
              PowerArew.values, powerArewValuesMap);
      bool allVelocityEnumsAreMapped =
          areAllEnumsValuesMappedToString<Velocity>(
              Velocity.values, velocityValuesMap);
      bool allVelocityAngularEnumsAreMapped =
          areAllEnumsValuesMappedToString<VelocityAngular>(
              VelocityAngular.values, velocityAngularValuesMap);

      expect(allVelocityAngularEnumsAreMapped, true);
      expect(allVelocityEnumsAreMapped, true);
      expect(allPowerArewEnumsAreMapped, true);
      expect(allPowerEnumsAreMapped, true);
      expect(allHeatConductivityEnumsAreMapped, true);
      expect(allHeatCapacityEnumsAreMapped, true);
      expect(allFuelVolumeEnumsAreMapped, true);
      expect(allFractureConductivityEnumsAreMapped, true);
      expect(allForceEnumsAreMapped, true);
      expect(allElectricCurrentEnumsAreMapped, true);
      expect(allViscosityEnumsAreMapped, true);
      expect(allLiquidProductionRateEnumsAreMapped, true);
      expect(allFluidYieldPointEnumsAreMapped, true);
      expect(allFluidVelocityEnumsAreMapped, true);
      expect(allFluidConsistencyEnumsAreMapped, true);
      expect(allCrudeOilEnumsAreMapped, true);
      expect(allVolumeGasEnumsAreMapped, true);
      expect(allSpecificVolumeEnumsAreMapped, true);
      expect(allLiquefiedNaturalGasEnumsAreMapped, true);
      expect(allGasVolumeEnumsAreMapped, true);
      expect(allGasProductionRateEnumsAreMapped, true);
      expect(allGasProductionIndexEnumsAreMapped, true);
      expect(allGasInjectionRateEnumsAreMapped, true);
      expect(allWeightPerUnitLengthEnumsAreMapped, true);
      expect(allWeightEnumsAreMapped, true);
      expect(allVolumeBasicEnumsAreMapped, true);
      expect(allTorqueEnumsAreMapped, true);
      expect(allTimeEnumsAreMapped, true);
      expect(allPressureEnumsAreMapped, true);
      expect(allMomentumEnumsAreMapped, true);
      expect(allLengthEnumsAreMapped, true);
      expect(allFrequencyEnumsAreMapped, true);
      expect(allFlowrateVolumeEnumsAreMapped, true);
      expect(allFlowrateMassEnumsAreMapped, true);
      expect(allEnergyEnumsAreMapped, true);
      expect(allDistributedForcesEnumsAreMapped, true);
      expect(allConversionsEnumsAreMapped, true);
      expect(allBasicConversionsEnumsAreMapped, true);
      expect(allGasConversionsEnumsAreMapped, true);
      expect(allFluidConversionsEnumsAreMapped, true);
      expect(allForceAndPowerConversionsEnumsAreMapped, true);
      expect(allDrillingConversionsEnumsAreMapped, true);
      expect(allProductionConversionsEnumsAreMapped, true);
      expect(allAccelerationEnumsAreMapped, true);
      expect(allAngleEnumsAreMapped, true);
      expect(allAreaEnumsAreMapped, true);
      expect(allCostRateEnumsAreMapped, true);
      expect(allDecimalNumberPrefixEnumsAreMapped, true);
      expect(allDensityEnumsAreMapped, true);
    });
  });
}

bool areAllEnumsValuesMappedToString<T>(
    List<T> enumValues, Map<T, String> enumValuesMap) {
  bool allEnumsAreMapped = enumValues.every((enumKey) {
    String enumValue = enumValuesMap[enumKey];

    bool enumValueIsMapped =
        enumValuesMap.containsKey(enumKey) && enumValue.isNotEmpty;
    if (enumValueIsMapped == false)
      print('$enumKey in $enumValuesMap fails test');

    return enumValueIsMapped;
  });
  return allEnumsAreMapped;
}
