enum StressElasticModulus {
  kilogramPerSquareCentimeter,
  kiloPascal,
  megaPascal,
  pascal,
  poundsPerSquareInch
}

Map<StressElasticModulus, String> stressElasticModulusValuesMap = {
  StressElasticModulus.kilogramPerSquareCentimeter:
      'Kilogram per Square Centimeter(kg/cm2)',
  StressElasticModulus.kiloPascal: 'KiloPascal(kPa)',
  StressElasticModulus.megaPascal: 'Mega Pascal(MPa)',
  StressElasticModulus.pascal: 'Pascal(Pa)',
  StressElasticModulus.poundsPerSquareInch: 'Pounds per Square Inch(psi)',
};

Map<StressElasticModulus, num> stressElasticModulusFactorMap = {
  StressElasticModulus.kilogramPerSquareCentimeter: 1,
  StressElasticModulus.kiloPascal: 98.0654748,
  StressElasticModulus.megaPascal: 0.0980657,
  StressElasticModulus.pascal: 98087.7931034,
  StressElasticModulus.poundsPerSquareInch: 14.22273,
};
