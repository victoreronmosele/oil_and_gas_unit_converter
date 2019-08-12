enum OilProductionIndex {
  barrelPerDayPoundsPerSquareInch,
  barrelPerHourPoundsPerSquareInch,
  barrelPerMinutePoundsPerSquareInch,
  cubicFeetPerDayPoundsPerSquareInch,
  cubicMeterPerDayKiloPascal,
  cubicMeterPerDayMegaPascal,
  cubicMeterPerHourKiloPascal,
  gallonsPerDayPoundsPerSquareInch,
  literPerHourKiloPascal
}

Map<OilProductionIndex, String> oilProductionIndexValuesMap = {
  OilProductionIndex.barrelPerDayPoundsPerSquareInch: 'Barrel per Day-Pounds per Square Inch(bbl/d-psi)',
  OilProductionIndex.barrelPerHourPoundsPerSquareInch: 'Barrel per Hour - Pounds per Square Inch(bbl/hr-psi)',
  OilProductionIndex.barrelPerMinutePoundsPerSquareInch: 'Barrel per Minute-Pounds per Square Inch(bbl/min-psi)',
  OilProductionIndex.cubicFeetPerDayPoundsPerSquareInch: 'Cubic Feet per Day-Pounds per Square Inch(ft3/d-psi)',
  OilProductionIndex.cubicMeterPerDayKiloPascal: 'Cubic Meter per Day -KiloPascal(m3/d-kPa)',
  OilProductionIndex.cubicMeterPerDayMegaPascal: 'Cubic Meter per Day -Mega Pascal(m3/d-MPa)',
  OilProductionIndex.cubicMeterPerHourKiloPascal: 'Cubic Meter per Hour-KiloPascal(m3/hr-kPa)',
  OilProductionIndex.gallonsPerDayPoundsPerSquareInch: 'Gallons per Day-Pounds per Square Inch(gal/d-psi) ',
  OilProductionIndex.literPerHourKiloPascal: 'Liter per Hour-KiloPascal(L/hr-kPa)',
};
