enum StressElasticModulus {
  kilogramPerSquareCentimeter,
  kiloPascal,
  megaPascal,
  pascal,
  poundsPerSquareInch
}

Map<StressElasticModulus, String> stressElasticModulusValuesMap = {
  StressElasticModulus.kilogramPerSquareCentimeter: 'Kilogram per Square Centimeter(kg/cm2)',
  StressElasticModulus.kiloPascal: 'KiloPascal(kPa)',
  StressElasticModulus.megaPascal: 'Mega Pascal(MPa)',
  StressElasticModulus.pascal: 'Pascal(Pa)',
  StressElasticModulus.poundsPerSquareInch: 'Pounds per Square Inch(psi)',
};
