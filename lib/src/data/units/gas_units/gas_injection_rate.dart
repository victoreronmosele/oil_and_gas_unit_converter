enum GasInjectionRate{
  cubicMeterPerMinute,
  standardCubicFeetPerMinute
}


Map<GasInjectionRate, String> gasInjectionRateValuesMap = {
  GasInjectionRate.cubicMeterPerMinute : 'Cubic Meter per Minute(m3/min)', 
  GasInjectionRate.standardCubicFeetPerMinute : 'Standard Cubic Feet per Minute(scfm)', 
};