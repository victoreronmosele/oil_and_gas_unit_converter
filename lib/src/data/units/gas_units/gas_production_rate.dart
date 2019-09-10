enum GasProductionRate {
  cubicMeterPerMinute,
  mm,
  mmm3,
  standardCubicFeetPerMinute
}

Map<GasProductionRate, String> gasProductionRateValuesMap = {
  GasProductionRate.cubicMeterPerMinute: 'Cubic Meter per Minute(m3/min)',
  GasProductionRate.mm: 'MM(MM) ',
  GasProductionRate.mmm3: 'MMM3/d(MMM3/d)',
  GasProductionRate.standardCubicFeetPerMinute:
      'Standard Cubic Feet per Minute(scfm)',
};

Map<GasProductionRate, num> gasProductionRateFactorMap = {
  GasProductionRate.cubicMeterPerMinute: 1,
  GasProductionRate.mm: 0.0508834,
  GasProductionRate.mmm3: 0.00144,
  GasProductionRate.standardCubicFeetPerMinute: 35.3144754,
};
