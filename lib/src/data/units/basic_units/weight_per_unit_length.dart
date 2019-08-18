enum WeightPerUnitLength {
  kilogramPerCentimeter,
  kilogramPerMeter,
  poundPerFoot,
  poundPerInch
}

Map<WeightPerUnitLength, String> weightPerUnitLengthValuesMap = {
  WeightPerUnitLength.kilogramPerCentimeter: 'Kilogram per Centimeter(kg/cm)',
  WeightPerUnitLength.kilogramPerMeter: 'Kilogram per Meter(kg/m)',
  WeightPerUnitLength.poundPerFoot: 'Pound per Foot(lb/ft)',
  WeightPerUnitLength.poundPerInch: 'Pound per Inch(lb/in)',
};

Map<WeightPerUnitLength, num> weightPerUnitLengthFactorMap = {
  WeightPerUnitLength.kilogramPerCentimeter: 1,
  WeightPerUnitLength.kilogramPerMeter: 100,
  WeightPerUnitLength.poundPerFoot: 67.114094,
  WeightPerUnitLength.poundPerInch: 5.5928412,
};
