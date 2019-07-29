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
