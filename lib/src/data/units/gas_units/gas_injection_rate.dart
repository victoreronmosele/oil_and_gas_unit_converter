enum GasInjectionRate { cubicMeterPerMinute, standardCubicFeetPerMinute }

Map<GasInjectionRate, String> gasInjectionRateValuesMap = {
  GasInjectionRate.cubicMeterPerMinute: 'Cubic Meter per Minute(m3/min)',
  GasInjectionRate.standardCubicFeetPerMinute:
      'Standard Cubic Feet per Minute(scfm)',
};

Map<GasInjectionRate, num> gasInjectionRateFactorMap = {
  GasInjectionRate.cubicMeterPerMinute: 1,
  GasInjectionRate.standardCubicFeetPerMinute: 35.335689,
};
