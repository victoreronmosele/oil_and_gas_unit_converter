enum DrillingRate {
  feetPerDay,
  feetPerHour,
  feetPerMinute,
  feetPerSecond,
  meterPerDay,
  meterPerHour,
  meterPerMinute,
  meterPerSecond
}

Map<DrillingRate, String> drillingRateValuesMap = {
  DrillingRate.feetPerDay: 'Feet per Day(ft/d)',
  DrillingRate.feetPerHour: 'Feet per Hour(ft/hr)',
  DrillingRate.feetPerMinute: 'Feet per Minute(ft/min)',
  DrillingRate.feetPerSecond: 'Feet per Second(ft/s)',
  DrillingRate.meterPerDay: 'Meter per Day(m/d)',
  DrillingRate.meterPerHour: 'Meter per Hour(m/hr)',
  DrillingRate.meterPerMinute: 'Meter per Minute(m/min)',
  DrillingRate.meterPerSecond: 'Meter per Second(m/s)',
};

Map<DrillingRate, num> drillingRateFactorMap = {
  DrillingRate.feetPerDay: 1,
  DrillingRate.feetPerHour: 0.0416667,
  DrillingRate.feetPerMinute: 0.0006944,
  DrillingRate.feetPerSecond: 0.0000116,
  DrillingRate.meterPerDay: 0.3048,
  DrillingRate.meterPerHour: 0.0127,
  DrillingRate.meterPerMinute: 0.0002117,
  DrillingRate.meterPerSecond: 0.0000035,
};
