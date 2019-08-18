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
import 'package:oil_and_gas_unit_converter/src/data/units/drilling_units/axial_dampling_coefficient.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/drilling_units/axial_spring_constant.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/drilling_units/dogleg.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/drilling_units/drilling_rate.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/drilling_units/footage_cost.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/drilling_units/mud_weight.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/drilling_units/pressure_gradient.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/drilling_units/pumping_and_flow_rate.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/drilling_units/torsional_dampling_coefficient.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/drilling_units/torsional_spring_constant.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/drilling_units/yield_slurry.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/crude_oil.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/fluid_consistency.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/fluid_velocity.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/fluid_yield_point.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/liquid_production_rate.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/fluid_units/viscosiity.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/force_and_power_units/electric_current.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/force_and_power_units/force.dart';
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
import 'package:oil_and_gas_unit_converter/src/data/units/production_units/nozzle_size.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/production_units/nozzle_speed.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/production_units/oil_production_index.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/production_units/permeability.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/production_units/pipe_capacity.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/production_units/production_rate.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/production_units/rotation.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/production_units/section_modulus.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/production_units/section_modulus_moment_of_section.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/production_units/stress_elastic_modulus.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/production_units/stroke_rate.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/production_units/stroke_volume.dart';
import 'package:test/test.dart';

void main() {
  group('Conversion general tests', () {
    test('All enums have string values in the conversion map', () {
      bool allConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Conversions>(
              Conversions.values, conversionsValuesMap);
      bool allBasicConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<BasicConversions>(
              BasicConversions.values, basicConversionsValuesMap);
      bool allGasConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<GasConversions>(
              GasConversions.values, gasConversionsValuesMap);
      bool allFluidConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<FluidConversions>(
              FluidConversions.values, fluidConversionValuesMap);
      bool allForceAndPowerConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<ForceAndPowerConversions>(
              ForceAndPowerConversions.values,
              forceAndPowerConversionsValuesMap);
      bool allDrillingConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<DrillingConversions>(
              DrillingConversions.values, drillingConversionsValuesMap);
      bool allProductionConversionsEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<ProductionConversions>(
              ProductionConversions.values, productionConversionsValuesMap);
      bool allAccelerationEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Acceleration>(
              Acceleration.values, accelerationStringValueMap);
      bool allAngleEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Angle>(
              Angle.values, angleValuesMap);
      bool allAreaEnumsAreMapped = areAllEnumsValuesMappedToStringValues<Area>(
          Area.values, areaValuesMap);
      bool allCostRateEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<CostRate>(
              CostRate.values, costRateValuesMap);
      bool allDecimalNumberPrefixEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<DecimalNumberPrefix>(
              DecimalNumberPrefix.values, decimalNumberPrefixValuesMap);
      bool allDensityEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Density>(
              Density.values, densityValuesMap);
      bool allDistributedForcesEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<DistributedForce>(
              DistributedForce.values, distributedForceValuesMap);
      bool allEnergyEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Energy>(
              Energy.values, energyValuesMap);
      bool allFlowrateMassEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<FlowrateMass>(
              FlowrateMass.values, flowrateMassValuesMap);
      bool allFlowrateVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<FlowrateVolume>(
              FlowrateVolume.values, flowrateVolumeValuesMap);
      bool allFrequencyEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Frequency>(
              Frequency.values, frequencyValuesMap);
      bool allLengthEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Length>(
              Length.values, lengthValuesMap);
      bool allMomentumEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Momentum>(
              Momentum.values, momentumValuesMap);
      bool allPressureEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Pressure>(
              Pressure.values, pressureValuesMap);
      bool allTimeEnumsAreMapped = areAllEnumsValuesMappedToStringValues<Time>(
          Time.values, timeValuesMap);
      bool allTorqueEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Torque>(
              Torque.values, torqueValuesMap);
      bool allVolumeBasicEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<VolumeBasic>(
              VolumeBasic.values, volumeBasicValuesMap);
      bool allWeightEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Weight>(
              Weight.values, weightValuesMap);
      bool allWeightPerUnitLengthEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<WeightPerUnitLength>(
              WeightPerUnitLength.values, weightPerUnitLengthValuesMap);
      bool allGasInjectionRateEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<GasInjectionRate>(
              GasInjectionRate.values, gasInjectionRateValuesMap);
      bool allGasProductionIndexEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<GasProductionIndex>(
              GasProductionIndex.values, gasProductionIndexValuesMap);
      bool allGasVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<GasVolume>(
              GasVolume.values, gasVolumeValuesMap);
      bool allGasProductionRateEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<GasProductionRate>(
              GasProductionRate.values, gasProductionRateValuesMap);
      bool allLiquefiedNaturalGasEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<LiquefiedNaturalGas>(
              LiquefiedNaturalGas.values, liquefiedNaturalGasValuesMap);
      bool allSpecificVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<SpecificVolume>(
              SpecificVolume.values, specificVolumeValuesMap);
      bool allVolumeGasEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<VolumeGas>(
              VolumeGas.values, volumeGasValuesMap);
      bool allCrudeOilEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<CrudeOil>(
              CrudeOil.values, crudeOilValuesMap);
      bool allFluidConsistencyEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<FluidConsistency>(
              FluidConsistency.values, fluidConsistencyValuesMap);
      bool allFluidVelocityEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<FluidVelocity>(
              FluidVelocity.values, fluidVelocityValuesMap);
      bool allFluidYieldPointEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<FluidYieldPoint>(
              FluidYieldPoint.values, fluidYieldPointValuesMap);
      bool allLiquidProductionRateEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<LiquidProductionRate>(
              LiquidProductionRate.values, liquidProductionRateValuesMap);
      bool allViscosityEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Viscosity>(
              Viscosity.values, viscosityValuesMap);
      bool allElectricCurrentEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<ElectricCurrent>(
              ElectricCurrent.values, electricCurrentValuesMap);
      bool allForceEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Force>(
              Force.values, forceValuesMap);
      bool allFractureConductivityEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<FractureConductivity>(
              FractureConductivity.values, fractureConductivityValuesMap);
      bool allFuelVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<FuelVolume>(
              FuelVolume.values, fuelVolumeValuesMap);
      bool allHeatCapacityEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<HeatCapacity>(
              HeatCapacity.values, heatCapacityValuesMap);
      bool allHeatConductivityEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<HeatConductivity>(
              HeatConductivity.values, heatConductivityValuesMap);
      bool allPowerEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Power>(
              Power.values, powerValuesMap);
      bool allPowerArewEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<PowerArew>(
              PowerArew.values, powerArewValuesMap);
      bool allVelocityEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Velocity>(
              Velocity.values, velocityValuesMap);
      bool allVelocityAngularEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<VelocityAngular>(
              VelocityAngular.values, velocityAngularValuesMap);
      bool allAxialDamplingCoefficientEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<AxialDamplingCoefficient>(
              AxialDamplingCoefficient.values,
              axialDamplingCoefficientValuesMap);
      bool allAxialSpringConstantEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<AxialSpringConstant>(
              AxialSpringConstant.values, axialSpringConstantValuesMap);
      bool allDoglegEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Dogleg>(
              Dogleg.values, doglegValuesMap);
      bool allDrillingRateEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<DrillingRate>(
              DrillingRate.values, drillingRateValuesMap);
      bool allFootageCostEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<FootageCost>(
              FootageCost.values, footageCostValuesMap);
      bool allMudWeightEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<MudWeight>(
              MudWeight.values, mudWeightValuesMap);
      bool allPressureGradientEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<PressureGradient>(
              PressureGradient.values, pressureGradientValuesMap);
      bool allPumpingAndFlowRateEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<PumpingAndFlowRate>(
              PumpingAndFlowRate.values, pumpingAndFlowRateValuesMap);
      bool allTorsionalDampingCoefficientEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<TorsionalDamplingCoefficient>(
              TorsionalDamplingCoefficient.values,
              torsionalDamplingCoefficientValuesMap);
      bool allTorsionalSpringConstantEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<TorsionalSpringConstant>(
              TorsionalSpringConstant.values, torsionalSpringConstantValuesMap);
      bool allYieldSlurryEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<YieldSlurry>(
              YieldSlurry.values, yieldSlurryValuesMap);
      bool allNozzleSizeEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<NozzleSize>(
              NozzleSize.values, nozzleSizeValuesMap);
      bool allNozzleSpeedEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<NozzleSpeed>(
              NozzleSpeed.values, nozzleSpeedValuesMap);
      bool allOilProductionIndexEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<OilProductionIndex>(
              OilProductionIndex.values, oilProductionIndexValuesMap);
      bool allPermeabilityEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Permeability>(
              Permeability.values, permeabilityValuesMap);
      bool allPipeCapacityEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<PipeCapacity>(
              PipeCapacity.values, pipeCapacityValuesMap);
      bool allProductionRateEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<ProductionRate>(
              ProductionRate.values, productionRateValuesMap);
      bool allRotationEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<Rotation>(
              Rotation.values, rotationValuesMap);
      bool allSectionModulusEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<SectionModulus>(
              SectionModulus.values, sectionModulusValuesMap);
      bool allSectionModulusMomentOfSectionEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<SectionModulusMomentOfSection>(
              SectionModulusMomentOfSection.values,
              sectionModulusMomentOfSectionValuesMap);
      bool allStressElasticModulusEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<StressElasticModulus>(
              StressElasticModulus.values, stressElasticModulusValuesMap);
      bool allStrokeRateEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<StrokeRate>(
              StrokeRate.values, strokeRateValuesMap);
      bool allStrokeVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToStringValues<StrokeVolume>(
              StrokeVolume.values, strokeVolumeValuesMap);

      expect(allNozzleSizeEnumsAreMapped, true);
      expect(allNozzleSpeedEnumsAreMapped, true);
      expect(allOilProductionIndexEnumsAreMapped, true);
      expect(allPermeabilityEnumsAreMapped, true);
      expect(allPipeCapacityEnumsAreMapped, true);
      expect(allProductionRateEnumsAreMapped, true);
      expect(allRotationEnumsAreMapped, true);
      expect(allSectionModulusEnumsAreMapped, true);
      expect(allSectionModulusMomentOfSectionEnumsAreMapped, true);
      expect(allStressElasticModulusEnumsAreMapped, true);
      expect(allStrokeRateEnumsAreMapped, true);
      expect(allStrokeVolumeEnumsAreMapped, true);
      expect(allAxialDamplingCoefficientEnumsAreMapped, true);
      expect(allAxialSpringConstantEnumsAreMapped, true);
      expect(allDoglegEnumsAreMapped, true);
      expect(allDrillingRateEnumsAreMapped, true);
      expect(allFootageCostEnumsAreMapped, true);
      expect(allMudWeightEnumsAreMapped, true);
      expect(allPressureGradientEnumsAreMapped, true);
      expect(allPumpingAndFlowRateEnumsAreMapped, true);
      expect(allTorsionalDampingCoefficientEnumsAreMapped, true);
      expect(allTorsionalSpringConstantEnumsAreMapped, true);
      expect(allYieldSlurryEnumsAreMapped, true);
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

    test('All enums have factors in the conversion map', () {
      bool allAccelerationEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<Acceleration>(
              Acceleration.values, accelerationFactorMap);
      bool allAngleEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<Angle>(Angle.values, angleFactorMap);
      bool allAreaEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<Area>(Area.values, areaFactorMap);
      bool allCostRateEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<CostRate>(
              CostRate.values, costRateFactorMap);
      bool allDecimalNumberPrefixEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<DecimalNumberPrefix>(
              DecimalNumberPrefix.values, decimalNumberPrefixFactorMap);
      bool allDensityEnumsAreMapped = areAllEnumsValuesMappedToFactors<Density>(
          Density.values, densityFactorMap);
      bool allDistributedForcesEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<DistributedForce>(
              DistributedForce.values, distributedForceFactorMap);
      bool allEnergyEnumsAreMapped = areAllEnumsValuesMappedToFactors<Energy>(
          Energy.values, energyFactorMap);
      bool allFlowrateMassEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<FlowrateMass>(
              FlowrateMass.values, flowrateMassFactorMap);
      bool allFlowrateVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<FlowrateVolume>(
              FlowrateVolume.values, flowrateVolumeFactorMap);
      bool allFrequencyEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<Frequency>(
              Frequency.values, frequencyFactorMap);
      bool allLengthEnumsAreMapped = areAllEnumsValuesMappedToFactors<Length>(
          Length.values, lengthFactorMap);
      bool allMomentumEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<Momentum>(
              Momentum.values, momentumFactorMap);
      bool allPressureEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<Pressure>(
              Pressure.values, pressureFactorMap);
      bool allTimeEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<Time>(Time.values, timeFactorMap);
      bool allTorqueEnumsAreMapped = areAllEnumsValuesMappedToFactors<Torque>(
          Torque.values, torqueFactorMap);
      bool allVolumeBasicEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<VolumeBasic>(
              VolumeBasic.values, volumeBasicFactorMap);
      bool allWeightEnumsAreMapped = areAllEnumsValuesMappedToFactors<Weight>(
          Weight.values, weightFactorMap);
      bool allWeightPerUnitLengthEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<WeightPerUnitLength>(
              WeightPerUnitLength.values, weightPerUnitLengthFactorMap);
      bool allGasInjectionRateEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<GasInjectionRate>(
              GasInjectionRate.values, gasInjectionRateFactorMap);
      bool allGasProductionIndexEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<GasProductionIndex>(
              GasProductionIndex.values, gasProductionIndexFactorMap);
      bool allGasVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<GasVolume>(
              GasVolume.values, gasVolumeFactorMap);
      bool allGasProductionRateEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<GasProductionRate>(
              GasProductionRate.values, gasProductionRateFactorMap);
      bool allLiquefiedNaturalGasEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<LiquefiedNaturalGas>(
              LiquefiedNaturalGas.values, liquefiedNaturalGasFactorMap);
      bool allSpecificVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<SpecificVolume>(
              SpecificVolume.values, specificVolumeFactorMap);
      bool allVolumeGasEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<VolumeGas>(
              VolumeGas.values, volumeGasFactorMap);
      bool allCrudeOilEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<CrudeOil>(
              CrudeOil.values, crudeOilFactorMap);
      bool allFluidConsistencyEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<FluidConsistency>(
              FluidConsistency.values, fluidConsistencyFactorMap);
      bool allFluidVelocityEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<FluidVelocity>(
              FluidVelocity.values, fluidVelocityFactorMap);
      bool allFluidYieldPointEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<FluidYieldPoint>(
              FluidYieldPoint.values, fluidYieldPointFactorMap);
      bool allLiquidProductionRateEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<LiquidProductionRate>(
              LiquidProductionRate.values, liquidProductionRateFactorMap);
      bool allViscosityEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<Viscosity>(
              Viscosity.values, viscosityFactorMap);
      bool allElectricCurrentEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<ElectricCurrent>(
              ElectricCurrent.values, electricCurrentFactorMap);
      bool allForceEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<Force>(Force.values, forceFactorMap);
      bool allFractureConductivityEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<FractureConductivity>(
              FractureConductivity.values, fractureConductivityFactorMap);
      bool allFuelVolumeEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<FuelVolume>(
              FuelVolume.values, fuelVolumeFactorMap);
      bool allHeatCapacityEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<HeatCapacity>(
              HeatCapacity.values, heatCapacityFactorMap);
      bool allHeatConductivityEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<HeatConductivity>(
              HeatConductivity.values, heatConductivityFactorMap);
      bool allPowerEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<Power>(Power.values, powerFactorMap);
      bool allPowerArewEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<PowerArew>(
              PowerArew.values, powerArewFactorMap);
      bool allVelocityEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<Velocity>(
              Velocity.values, velocityFactorMap);
      bool allVelocityAngularEnumsAreMapped =
          areAllEnumsValuesMappedToFactors<VelocityAngular>(
              VelocityAngular.values, velocityAngularFactorMap);
      // bool allAxialDamplingCoefficientEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<AxialDamplingCoefficient>(
      //         AxialDamplingCoefficient.values,
      //         axialDamplingCoefficientFactorMap);
      // bool allAxialSpringConstantEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<AxialSpringConstant>(
      //         AxialSpringConstant.values, axialSpringConstantFactorMap);
      // bool allDoglegEnumsAreMapped = areAllEnumsValuesMappedToFactors<Dogleg>(
      //     Dogleg.values, doglegFactorMap);
      // bool allDrillingRateEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<DrillingRate>(
      //         DrillingRate.values, drillingRateFactorMap);
      // bool allFootageCostEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<FootageCost>(
      //         FootageCost.values, footageCostFactorMap);
      // bool allMudWeightEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<MudWeight>(
      //         MudWeight.values, mudWeightFactorMap);
      // bool allPressureGradientEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<PressureGradient>(
      //         PressureGradient.values, pressureGradientFactorMap);
      // bool allPumpingAndFlowRateEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<PumpingAndFlowRate>(
      //         PumpingAndFlowRate.values, pumpingAndFlowRateFactorMap);
      // bool allTorsionalDampingCoefficientEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<TorsionalDamplingCoefficient>(
      //         TorsionalDamplingCoefficient.values,
      //         torsionalDamplingCoefficientFactorMap);
      // bool allTorsionalSpringConstantEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<TorsionalSpringConstant>(
      //         TorsionalSpringConstant.values, torsionalSpringConstantFactorMap);
      // bool allYieldSlurryEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<YieldSlurry>(
      //         YieldSlurry.values, yieldSlurryFactorMap);
      // bool allNozzleSizeEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<NozzleSize>(
      //         NozzleSize.values, nozzleSizeFactorMap);
      // bool allNozzleSpeedEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<NozzleSpeed>(
      //         NozzleSpeed.values, nozzleSpeedFactorMap);
      // bool allOilProductionIndexEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<OilProductionIndex>(
      //         OilProductionIndex.values, oilProductionIndexFactorMap);
      // bool allPermeabilityEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<Permeability>(
      //         Permeability.values, permeabilityFactorMap);
      // bool allPipeCapacityEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<PipeCapacity>(
      //         PipeCapacity.values, pipeCapacityFactorMap);
      // bool allProductionRateEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<ProductionRate>(
      //         ProductionRate.values, productionRateFactorMap);
      // bool allRotationEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<Rotation>(
      //         Rotation.values, rotationFactorMap);
      // bool allSectionModulusEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<SectionModulus>(
      //         SectionModulus.values, sectionModulusFactorMap);
      // bool allSectionModulusMomentOfSectionEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<SectionModulusMomentOfSection>(
      //         SectionModulusMomentOfSection.values,
      //         sectionModulusMomentOfSectionFactorMap);
      // bool allStressElasticModulusEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<StressElasticModulus>(
      //         StressElasticModulus.values, stressElasticModulusFactorMap);
      // bool allStrokeRateEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<StrokeRate>(
      //         StrokeRate.values, strokeRateFactorMap);
      // bool allStrokeVolumeEnumsAreMapped =
      //     areAllEnumsValuesMappedToFactors<StrokeVolume>(
      //         StrokeVolume.values, strokeVolumeFactorMap);

      // expect(allNozzleSizeEnumsAreMapped, true);
      // expect(allNozzleSpeedEnumsAreMapped, true);
      // expect(allOilProductionIndexEnumsAreMapped, true);
      // expect(allPermeabilityEnumsAreMapped, true);
      // expect(allPipeCapacityEnumsAreMapped, true);
      // expect(allProductionRateEnumsAreMapped, true);
      // expect(allRotationEnumsAreMapped, true);
      // expect(allSectionModulusEnumsAreMapped, true);
      // expect(allSectionModulusMomentOfSectionEnumsAreMapped, true);
      // expect(allStressElasticModulusEnumsAreMapped, true);
      // expect(allStrokeRateEnumsAreMapped, true);
      // expect(allStrokeVolumeEnumsAreMapped, true);
      // expect(allAxialDamplingCoefficientEnumsAreMapped, true);
      // expect(allAxialSpringConstantEnumsAreMapped, true);
      // expect(allDoglegEnumsAreMapped, true);
      // expect(allDrillingRateEnumsAreMapped, true);
      // expect(allFootageCostEnumsAreMapped, true);
      // expect(allMudWeightEnumsAreMapped, true);
      // expect(allPressureGradientEnumsAreMapped, true);
      // expect(allPumpingAndFlowRateEnumsAreMapped, true);
      // expect(allTorsionalDampingCoefficientEnumsAreMapped, true);
      // expect(allTorsionalSpringConstantEnumsAreMapped, true);
      // expect(allYieldSlurryEnumsAreMapped, true);
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
      expect(allAccelerationEnumsAreMapped, true);
      expect(allAngleEnumsAreMapped, true);
      expect(allAreaEnumsAreMapped, true);
      expect(allCostRateEnumsAreMapped, true);
      expect(allDecimalNumberPrefixEnumsAreMapped, true);
      expect(allDensityEnumsAreMapped, true);
    });
  });
}

bool areAllEnumsValuesMappedToStringValues<T>(
    List<T> enums, Map<T, String> enumStringValuesMap) {
  bool allEnumsAreMapped = enums.every((enumKey) {
    String enumStringValue = enumStringValuesMap[enumKey];

    bool enumStringValueIsMapped =
        enumStringValuesMap.containsKey(enumKey) && enumStringValue.isNotEmpty;
    if (enumStringValueIsMapped == false)
      print('$enumKey in $enumStringValuesMap fails test');

    return enumStringValueIsMapped;
  });
  return allEnumsAreMapped;
}

bool areAllEnumsValuesMappedToFactors<T>(
    List<T> enums, Map<T, num> enumFactorsMap) {
  bool allEnumsAreMapped = enums.every((enumKey) {
    num enumFactor = enumFactorsMap[enumKey];

    bool enumFactorIsMapped =
        enumFactorsMap.containsKey(enumKey) && (enumFactor != null);
    if (enumFactorIsMapped == false)
      print('$enumKey in $enumFactorsMap fails test');

    return enumFactorIsMapped;
  });
  return allEnumsAreMapped;
}
