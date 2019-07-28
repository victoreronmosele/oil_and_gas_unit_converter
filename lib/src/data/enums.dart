enum Conversions {
  basic,
  gas,
  fluid,
  forceAndPower,
  drilling,
  production,
}

Map<Conversions, String> conversionsValuesMap = {
  Conversions.basic: 'Basic Conversion',
  Conversions.gas: 'Gas Conversions',
  Conversions.fluid: 'Fluid Conversions',
  Conversions.forceAndPower: 'Force & Power Conversions',
  Conversions.drilling: 'Drilling Conversions',
  Conversions.production: 'Production Conversions'
};

enum BasicConversions {
  acceleration,
  angle,
  area,
  costRate,
  decimalNumberPrefix,
  density,
  distributedForces,
  energy,
  flowrateMass,
  flowrateVolume,
  frequency,
  length,
  momentum,
  pressure,
  time,
  torque,
  volume,
  weight,
  weightPerUnitLength,
}

Map<BasicConversions, String> basicConversionsValuesMap = {
  BasicConversions.acceleration: 'Acceleration',
  BasicConversions.angle: 'Angle',
  BasicConversions.area: 'Area',
  BasicConversions.costRate: 'Cost Rate',
  BasicConversions.decimalNumberPrefix: 'Decimal Number Prefix',
  BasicConversions.density: 'Density',
  BasicConversions.distributedForces: 'Distributed Forces',
  BasicConversions.energy: 'Energy',
  BasicConversions.flowrateMass: 'Flowrate - Mass',
  BasicConversions.flowrateVolume: 'Flowrate - Volume',
  BasicConversions.frequency: 'Frequency',
  BasicConversions.length: 'Length',
  BasicConversions.momentum: 'Momentum',
  BasicConversions.pressure: 'Pressure',
  BasicConversions.time: 'Time',
  BasicConversions.torque: 'Torque',
  BasicConversions.volume: 'Volume',
  BasicConversions.weight: 'Weight',
  BasicConversions.weightPerUnitLength: 'Weight per Unit Length'
};

enum GasConversions {
  gasInjectionRate,
  gasProductionIndex,
  gasProductionRate,
  gasVolume,
  liquefiedNaturalGas,
  specificVolume,
  volume,
}

Map<GasConversions, String> gasConversionsValuesMap = {
  GasConversions.gasInjectionRate: 'Gas Injection Rate',
  GasConversions.gasProductionIndex: 'Gas Production Index',
  GasConversions.gasProductionRate: 'Gas Production Rate',
  GasConversions.gasVolume: 'Gas Volume',
  GasConversions.liquefiedNaturalGas: 'Liquefied Natural Gas',
  GasConversions.specificVolume: 'Specific Volume',
  GasConversions.volume: 'Volume',
};

enum FluidConversions {
  crudeOil,
  fluidConsistency,
  fluidVelocity,
  fluidYieldPoint,
  liquidProductionRate,
  viscosity
}

Map<FluidConversions, String> fluidConversionValuesMap = {
  FluidConversions.crudeOil: 'Crude Oil',
  FluidConversions.fluidConsistency: 'Fluid Consistency',
  FluidConversions.fluidVelocity: 'Fluid Velocity',
  FluidConversions.fluidYieldPoint: 'Fluid Yield Point',
  FluidConversions.liquidProductionRate: 'Liquid Production Rate',
  FluidConversions.viscosity: 'Viscosity'
};

enum ForceAndPowerConversions {
  electricCurrent,
  force,
  fractureConductivity,
  fuelVolume,
  heatCapacity,
  heatConductivity,
  power,
  powerArew,
  velocity,
  velocityAngular
}

Map<ForceAndPowerConversions, String> forceAndPowerConversionsValuesMap = {
  ForceAndPowerConversions.electricCurrent: 'Electric Current',
  ForceAndPowerConversions.force: 'Force',
  ForceAndPowerConversions.fractureConductivity: 'Fracture Conductivity',
  ForceAndPowerConversions.fuelVolume: 'Fuel Volume',
  ForceAndPowerConversions.heatCapacity: 'Heat Capacity',
  ForceAndPowerConversions.heatConductivity: 'Heat Conductivity',
  ForceAndPowerConversions.power: 'Power',
  ForceAndPowerConversions.powerArew: 'Power/Arew',
  ForceAndPowerConversions.velocity: 'Velocity',
  ForceAndPowerConversions.velocityAngular: 'Velocity - Angular'
};

enum DrillingConversions {
  axialDamplingCoefficient,
  axialSpringConstant,
  dogleg,
  drillingRate,
  footageCost,
  mudWeight,
  pressureGradient,
  pumpingAndFlowRate,
  torsionalDamplingCoefficient,
  torsionalSpringConstant,
  yieldSlurry
}

Map<DrillingConversions, String> drillingConversionsValuesMap = {
  DrillingConversions.axialDamplingCoefficient: 'Axial Dampling Coefficient',
  DrillingConversions.axialSpringConstant: 'Axial Spring Constant',
  DrillingConversions.dogleg: 'Dogleg',
  DrillingConversions.drillingRate: 'Drilling Rate',
  DrillingConversions.footageCost: 'Footage Cost',
  DrillingConversions.mudWeight: 'Mud Weight',
  DrillingConversions.pressureGradient: 'Pressure Gradient',
  DrillingConversions.pumpingAndFlowRate: 'Pumping and Flow Rate',
  DrillingConversions.torsionalDamplingCoefficient:
      'Torsional Dampling Coefficient',
  DrillingConversions.torsionalSpringConstant: 'Torsional Spring Constant',
  DrillingConversions.yieldSlurry: 'Yield Slurry'
};

enum ProductionConversions {
  nozzleSize,
  nozzleSpeed,
  oilProductionIndex,
  permeablity,
  pipeCapacity,
  productionRate,
  rotation,
  sectionModulus,
  sectionModulusMomentOfSection,
  stressElasticModulus,
  strokeRate,
  strokeVolume
}

Map<ProductionConversions, String> productionConversionsValuesMap = {
  ProductionConversions.nozzleSize: 'Nozzle Size',
  ProductionConversions.nozzleSpeed: 'Nozzle Speed',
  ProductionConversions.oilProductionIndex: 'Oil Production Index',
  ProductionConversions.permeablity: 'Permeablity',
  ProductionConversions.pipeCapacity: 'Pipe Capacity',
  ProductionConversions.productionRate: 'Production Rate',
  ProductionConversions.rotation: 'Rotation',
  ProductionConversions.sectionModulus: 'Section Modulus',
  ProductionConversions.stressElasticModulus: 'Stress Elastic Modulus',
  ProductionConversions.sectionModulusMomentOfSection:
      'Section Modulus - Moment of Section',
  ProductionConversions.strokeRate: 'Stroke Rate',
  ProductionConversions.strokeVolume: 'Stroke Volume'
};
