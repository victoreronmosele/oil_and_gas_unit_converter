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
  MudWeight.poundsPerSquareInchPerFeet: 'Pounds per Square Inch per Feet(psi/ft)',
  MudWeight.poundsPerSquareInchPerHundredFeet: 'Pounds per Square Inch per hundred Feet(psi/100ft)',
  MudWeight.specificGravity: 'Specific Gravity (S.G)',
};
