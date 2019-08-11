enum Viscosity {
  centipoise,
  gramPerCentimeterSecond,
  kilogramPerMeterHour,
  kilogramPerMeterSecond,
  kilogramForceSecondPerSquareMeter,
  kiloPascalSecond,
  newtonSecondPerSquareMeter,
  pascalSecond,
  poise,
  poundForceSecondPerSquareFoot,
  poundForceSecondPerSquareInch,
  poundPerFootHour,
  poundPerFootSecond,
  poundalSecondPerSquareFoot,
  reyn
}

Map<Viscosity, String> viscosityValuesMap = {
  Viscosity.centipoise: 'Centipoise(cp)',
  Viscosity.gramPerCentimeterSecond: 'Gram per Centimeter Second(g/(cm.s))',
  Viscosity.kilogramPerMeterHour: 'Kilogram per Meter Hour(kg/(m.hr))',
  Viscosity.kilogramPerMeterSecond: 'Kilogram per Meter Second(kg/(m.s))',
  Viscosity.kilogramForceSecondPerSquareMeter:
      'Kilogram-force Second per Square Meter(kg-f.s/m2)',
  Viscosity.kiloPascalSecond: 'KiloPascal Second(kPa-s)',
  Viscosity.newtonSecondPerSquareMeter:
      'Newton Second per Square Meter(N.s/m2)',
  Viscosity.pascalSecond: 'Pascal Second(Pa-s)',
  Viscosity.poise: 'Poise(dyne-s/cm2)',
  Viscosity.poundForceSecondPerSquareFoot:
      'Pound force-Second per Square Foot(lbf-s/ft2)',
  Viscosity.poundForceSecondPerSquareInch: 'Pound force-Second per Square Inch(lbf-s/in2)',
  Viscosity.poundPerFootHour: 'Pound per Foot Hour(lb/(ft.hr))',
  Viscosity.poundPerFootSecond: 'Pound per Foot Second(lb/(ft.s))',
  Viscosity.poundalSecondPerSquareFoot: 'Poundal Second per Square Foot(poundal.s/ft2)',
  Viscosity.reyn: 'Reyn(reyn)',
};
