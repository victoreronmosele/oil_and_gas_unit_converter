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
  GasProductionIndex.cubicMeterPerDayMegaPascal:
      'Cubic Meter per Day -Mega Pacal(m3/d-MPa)',
  GasProductionIndex.cubicMeterPerDayKiloPascal:
      'Cubic Meter per Day-KiloPascal(m3/d-kPa)',
  GasProductionIndex.cubicMeterPerHour:
      'Cubic Meter per Hour -KiloPascal(m3/hr-kPa)',
  GasProductionIndex.millionStandardCubicFeetPerDayPerPoundsPerSquareInch:
      'Million Standard Cubic Feet per Day per Pounds per Square Inch(MMSCFD/psi)',
  GasProductionIndex.mscfHrPsi: 'MSCF/hr-psi(MSCF/hr-psi)',
  GasProductionIndex.mscfPsi: 'MSCFD/psi(MSCFD/psi)',
  GasProductionIndex.scfHrPsi: 'SCF/hr-psi(SCF/hr-psi)',
  GasProductionIndex.standardCubicFeetPerDayPerPoundsPerSquareInch:
      'Standard Cubic Feet per Day per Pounds per Square Inch(SCFD/psi)',
};

Map<GasProductionIndex, num> gasProductionIndexFactorMap = {
  GasProductionIndex.cubicMeterPerDayMegaPascal : 1, 
  GasProductionIndex.cubicMeterPerDayKiloPascal : 1000, 
  GasProductionIndex.cubicMeterPerHour : 41.6675544, 
  GasProductionIndex.millionStandardCubicFeetPerDayPerPoundsPerSquareInch : 0.2436699, 
  GasProductionIndex.mscfHrPsi : 10.152921, 
  GasProductionIndex.mscfPsi : 243.6699, 
  GasProductionIndex.scfHrPsi : 10152.9209608, 
  GasProductionIndex.standardCubicFeetPerDayPerPoundsPerSquareInch : 243669.9, 
  };
