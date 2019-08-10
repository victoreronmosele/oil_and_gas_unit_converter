enum WeightPerUnitLength{
  kilogramPerCentimeter,
  kilogramPerMeter,
  poundPerFoot,
  poundPerInch
}


Map<WeightPerUnitLength, String> weightPerUnitLengthValuesMap = {
  WeightPerUnitLength.kilogramPerCentimeter : 'Kilogram per Centimeter(kg/cm)', 
  WeightPerUnitLength.kilogramPerMeter: 'Kilogram per Meter(kg/m)',
  WeightPerUnitLength.poundPerFoot : 'Pound per Foot(lb/ft)', 
  WeightPerUnitLength.poundPerInch : 'Pound per Inch(lb/in)', 
};