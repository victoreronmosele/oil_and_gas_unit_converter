enum PumpingAndFlowRate{
  barrelPerHour,
  barrelPerMinute,
  cubicFeetPerMinute,
  cubicMeterPerHour,
  cubicMeterPerMinute,
  gallonPerHour,
  gallonsPerMinute,
  literPerHour,
  literPerMinute
}


Map<PumpingAndFlowRate, String> pumpingAndFlowRateValuesMap = {
PumpingAndFlowRate.barrelPerHour : 'Barrel per Hour(bbl/hr)', 
PumpingAndFlowRate.barrelPerMinute : 'Barrel per Minute(bbl/min)', 
PumpingAndFlowRate.cubicFeetPerMinute : 'Cubic Feet per Minute(ft3/min)', 
PumpingAndFlowRate.cubicMeterPerHour : 'Cubic Meter per Hour(m3/hr)', 
PumpingAndFlowRate.cubicMeterPerMinute : 'Cubic Meter per Minute(m3/min)', 
PumpingAndFlowRate.gallonPerHour : 'Gallon per Hour(gal/hr)', 
PumpingAndFlowRate.gallonsPerMinute : 'Gallons per Minute(gpm)', 
PumpingAndFlowRate.literPerHour : 'Liter per Hour(L/hr)', 
PumpingAndFlowRate.literPerMinute : 'Liter per Minute(L/min)', 
};