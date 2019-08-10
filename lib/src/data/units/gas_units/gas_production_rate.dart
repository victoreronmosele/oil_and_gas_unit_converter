enum GasProductionRate{
  cubicMeterPerMinute,
  mm,
  mmm3,
  standardCubicFeetPerMinute
}


Map<GasProductionRate, String> gasProductionRateValuesMap = {
  GasProductionRate.cubicMeterPerMinute : 'Cubic Meter per Minute(m3/min)', 
  GasProductionRate.mm : 'MM(MM) ', 
  GasProductionRate.mmm3 : 'MMM3/d(MMM3/d)', 
  GasProductionRate.standardCubicFeetPerMinute : 'Standard Cubic Feet per Minute(scfm)', 
};