enum PumpingAndFlowRate {
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
  PumpingAndFlowRate.barrelPerHour: 'Barrel per Hour(bbl/hr)',
  PumpingAndFlowRate.barrelPerMinute: 'Barrel per Minute(bbl/min)',
  PumpingAndFlowRate.cubicFeetPerMinute: 'Cubic Feet per Minute(ft3/min)',
  PumpingAndFlowRate.cubicMeterPerHour: 'Cubic Meter per Hour(m3/hr)',
  PumpingAndFlowRate.cubicMeterPerMinute: 'Cubic Meter per Minute(m3/min)',
  PumpingAndFlowRate.gallonPerHour: 'Gallon per Hour(gal/hr)',
  PumpingAndFlowRate.gallonsPerMinute: 'Gallons per Minute(gpm)',
  PumpingAndFlowRate.literPerHour: 'Liter per Hour(L/hr)',
  PumpingAndFlowRate.literPerMinute: 'Liter per Minute(L/min)',
};

Map<PumpingAndFlowRate, num> pumpingAndFlowRateFactorMap = {
  PumpingAndFlowRate.barrelPerHour: 1,
  PumpingAndFlowRate.barrelPerMinute: 0.0166667,
  PumpingAndFlowRate.cubicFeetPerMinute: 0.0935764,
  PumpingAndFlowRate.cubicMeterPerHour: 0.1589873,
  PumpingAndFlowRate.cubicMeterPerMinute: 0.0026498,
  PumpingAndFlowRate.gallonPerHour: 42,
  PumpingAndFlowRate.gallonsPerMinute: 0.7,
  PumpingAndFlowRate.literPerHour: 158.9872949,
  PumpingAndFlowRate.literPerMinute: 2.6497882,
};
