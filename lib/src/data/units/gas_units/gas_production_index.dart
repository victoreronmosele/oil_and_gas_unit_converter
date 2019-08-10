enum GasProductionIndex {
  cubicMeterPerDayMegaPascal,
  cubicMeterPerDayKiloPascal,
  cubicMeterPerHour,
  millionStandardCubicFeetPerDayPerPoundsPerSquareInch,
  mscfHrPsi,
  mscfPsi,
  scfHrPsi,
  standardCubicFeetPerDayPerPoundsPerSquareInch
}

Map<GasProductionIndex, String> gasProductionIndexValuesMap = {
  GasProductionIndex.cubicMeterPerDayMegaPascal : 'Cubic Meter per Day -Mega Pacal(m3/d-MPa)', 
  GasProductionIndex.cubicMeterPerDayKiloPascal : 'Cubic Meter per Day-KiloPascal(m3/d-kPa)', 
  GasProductionIndex.cubicMeterPerHour : 'Cubic Meter per Hour -KiloPascal(m3/hr-kPa)', 
  GasProductionIndex.millionStandardCubicFeetPerDayPerPoundsPerSquareInch : 'Million Standard Cubic Feet per Day per Pounds per Square Inch(MMSCFD/psi)', 
  GasProductionIndex.mscfHrPsi : 'MSCF/hr-psi(MSCF/hr-psi)', 
  GasProductionIndex.mscfPsi : 'MSCFD/psi(MSCFD/psi)', 
  GasProductionIndex.scfHrPsi : 'SCF/hr-psi(SCF/hr-psi)', 
  GasProductionIndex.standardCubicFeetPerDayPerPoundsPerSquareInch : 'Standard Cubic Feet per Day per Pounds per Square Inch(SCFD/psi)', 
};
