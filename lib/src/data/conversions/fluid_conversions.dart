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
