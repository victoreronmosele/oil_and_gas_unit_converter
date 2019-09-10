enum PressureGradient {
  kiloPascal,
  megaPascalPerMinute,
  pascalPerMinute,
  poundsPerGallon,
  poundsPerSquareInchPerFeet
}

Map<PressureGradient, String> pressureGradientValuesMap = {
  PressureGradient.kiloPascal: 'KiloPascal(kPa)',
  PressureGradient.megaPascalPerMinute: 'Mega Pascal per Minute(MPa/m)',
  PressureGradient.pascalPerMinute: 'Pascal per Minute(Pa/m) ',
  PressureGradient.poundsPerGallon: 'Pounds per Gallon (ppg)',
  PressureGradient.poundsPerSquareInchPerFeet:
      'Pounds per Square Inch per Feet(psi/ft)',
};

Map<PressureGradient, num> pressureGradientFactorMap = {
  PressureGradient.kiloPascal: 1,
  PressureGradient.megaPascalPerMinute: 0.001,
  PressureGradient.pascalPerMinute: 1000,
  PressureGradient.poundsPerGallon: 0.8556801,
  PressureGradient.poundsPerSquareInchPerFeet: 0.8556801,
};
