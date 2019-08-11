enum FluidConsistency { dyneSnPerCm2, eqCp, lbfSnPer100ft2, lbfSnPerft2, paSn }

Map<FluidConsistency, String> fluidConsistencyValuesMap = {
  FluidConsistency.dyneSnPerCm2: 'dyne-s^n/cm2(dyne-s^n/cm2)',
  FluidConsistency.eqCp: 'eq.cp(eq.cp)',
  FluidConsistency.lbfSnPer100ft2: 'lbf-s^n/100ft2(lbf-s^n/100ft2)',
  FluidConsistency.lbfSnPerft2: 'lbf-s^n/ft2(lbf-s^n/ft2)',
  FluidConsistency.paSn: 'Pa-s^n(Pa-s^n)',
};
