enum FluidYieldPoint {
  dynePerSquareCentimter,
  kiloPascal,
  megaPascal,
  poundForcePerHundredSquareFeet
}

Map<FluidYieldPoint, String> fluidYieldPointValuesMap = {
  FluidYieldPoint.dynePerSquareCentimter:
      'Dyne per Square Centimeter(dyne/cm2)',
  FluidYieldPoint.kiloPascal: 'KiloPascal(kPa)',
  FluidYieldPoint.megaPascal: 'Mega Pascal(MPa)',
  FluidYieldPoint.poundForcePerHundredSquareFeet:
      'Pound Force per Hundred Square Feet(lbf/100ft2)',
};

Map<FluidYieldPoint, num> fluidYieldPointFactorMap = {
  FluidYieldPoint.dynePerSquareCentimter: 1,
  FluidYieldPoint.kiloPascal: 0.0999587,
  FluidYieldPoint.megaPascal: 0.0001,
  FluidYieldPoint.poundForcePerHundredSquareFeet: 0.208768,
};
