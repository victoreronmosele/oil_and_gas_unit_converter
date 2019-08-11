enum DrillingRate{
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
  DrillingRate.feetPerDay : 'Feet per Day(ft/d)', 
  DrillingRate.feetPerHour : 'Feet per Hour(ft/hr)', 
  DrillingRate.feetPerMinute : 'Feet per Minute(ft/min)', 
  DrillingRate.feetPerSecond : 'Feet per Second(ft/s)', 
  DrillingRate.meterPerDay : 'Meter per Day(m/d)', 
  DrillingRate.meterPerHour : 'Meter per Hour(m/hr)', 
  DrillingRate.meterPerMinute : 'Meter per Minute(m/min)', 
  DrillingRate.meterPerSecond : 'Meter per Second(m/s)', 
  };