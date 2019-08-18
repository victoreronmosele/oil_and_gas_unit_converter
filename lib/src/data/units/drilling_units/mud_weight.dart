enum MudWeight {
  gramPerCubicCentimeter,
  gramsPerLiter,
  kilogramPerCubicMeter,
  kilogramPerLiter,
  kiloPascalPerMeter,
  poundPerCubicFeet,
  poundsPerBarrel,
  poundPerGallon,
  poundsPerSquareInchPerFeet,
  poundsPerSquareInchPerHundredFeet,
  specificGravity
}

Map<MudWeight, String> mudWeightValuesMap = {
  MudWeight.gramPerCubicCentimeter: 'Gram per Cubic Centimeter(g/cm3)',
  MudWeight.gramsPerLiter: 'Grams per Liter(g/L)',
  MudWeight.kilogramPerCubicMeter: 'Kilogram per Cubic Meter(kg/m3)',
  MudWeight.kilogramPerLiter: 'Kilogram per Liter(kg/L)',
  MudWeight.kiloPascalPerMeter: 'KiloPascal per Meter(kPa/m)',
  MudWeight.poundPerCubicFeet: 'Pound per Cubic Feet (lb/ft3)',
  MudWeight.poundsPerBarrel: 'Pounds per Barrel(lb/bbl)',
  MudWeight.poundPerGallon: 'Pounds per Gallon(lb/gal)',
  MudWeight.poundsPerSquareInchPerFeet:
      'Pounds per Square Inch per Feet(psi/ft)',
  MudWeight.poundsPerSquareInchPerHundredFeet:
      'Pounds per Square Inch per hundred Feet(psi/100ft)',
  MudWeight.specificGravity: 'Specific Gravity (S.G)',
};

Map<MudWeight, num> mudWeightFactorMap = {
  MudWeight.gramPerCubicCentimeter: 1,
  MudWeight.gramsPerLiter: 1000,
  MudWeight.kilogramPerCubicMeter: 1000,
  MudWeight.kilogramPerLiter: 1,
  MudWeight.kiloPascalPerMeter: 9.8114244,
  MudWeight.poundPerCubicFeet: 62.4336642,
  MudWeight.poundsPerBarrel: 350.5070669,
  MudWeight.poundPerGallon: 8.3454064,
  MudWeight.poundsPerSquareInchPerFeet: 0.4339843,
  MudWeight.poundsPerSquareInchPerHundredFeet: 43.3726579,
  MudWeight.specificGravity: 1,
};
