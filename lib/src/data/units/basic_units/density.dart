enum Density {
  gramPerCubicCentimeter,
  gramPerLiter,
  kilogramPerCubicCentimeter,
  kilogramPerCubicMeter,
  kilogramPerLiter,
  ouncePerCubicFoot,
  ouncePerCubicInch,
  poundPerCubicFoot,
  poundPerCubicInch,
  pouncPerUSGallon,
  slugPerCubicFoot,
  slugPerCubicInch,
  specificGravity,
  waterDensity
}

Map<Density, String> densityValuesMap = {
  Density.gramPerCubicCentimeter: 'Gram per Cubic Centimeter(g/cm3)',
  Density.gramPerLiter: 'Gram per Liter(g/L)',
  Density.kilogramPerCubicCentimeter: ' Kilogram per Cubic Centimeter(kg/cm3)',
  Density.kilogramPerCubicMeter: 'Kilogram per Cubic Meter(kg/m3)',
  Density.kilogramPerLiter: 'Kilogram per Liter(kg/L)',
  Density.ouncePerCubicFoot: 'Ounce per Cubic Foot(oz/ft3)',
  Density.ouncePerCubicInch: 'Ounce per Cubic Inch(oz/in3)',
  Density.poundPerCubicFoot: 'Pound per Cubic Foot(lb/ft3)',
  Density.poundPerCubicInch: 'Pound per Cubic Inch(lb/in3)',
  Density.pouncPerUSGallon: 'Pound per U.S. Gallon(lb/gal) ',
  Density.slugPerCubicFoot: 'Slug per Cubic Foot(slug/ft3)',
  Density.slugPerCubicInch: 'Slug per Cubic Inch(slug/in3)',
  Density.specificGravity: 'Specific Gravity (S.G.)',
  Density.waterDensity: 'Water Density(H2O)'
};

Map<Density, num> densityFactorMap = {
  Density.gramPerCubicCentimeter: 1,
  Density.gramPerLiter: 1000.0320369,
  Density.kilogramPerCubicCentimeter: 0.001,
  Density.kilogramPerCubicMeter: 1000,
  Density.kilogramPerLiter: 1.0000037,
  Density.ouncePerCubicFoot: 998.88,
  Density.ouncePerCubicInch: 0.5780556,
  Density.poundPerCubicFoot: 62.43,
  Density.poundPerCubicInch: 0.0361285,
  Density.pouncPerUSGallon: 8.3456767,
  Density.slugPerCubicFoot: 1.9403837,
  Density.slugPerCubicInch: 0.0011229,
  Density.specificGravity: 1.0000037,
  Density.waterDensity: 1.0000326,
};
