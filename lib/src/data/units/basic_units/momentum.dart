enum Momentum {
  gramCentimeterPerSecond,
  kilogramMeterPerHour,
  kilogramMeterPerSecond,
  poundFootPerHour,
  poundFootPerSecond,
  poundInchPerSecond
}

Map<Momentum, String> momentumValuesMap = {
  Momentum.gramCentimeterPerSecond: 'Gram-Centimeter per Second(g.cm/sec)',
  Momentum.kilogramMeterPerHour: 'Kilogram-Meter per Hour(kg.m/hr)',
  Momentum.kilogramMeterPerSecond: 'Kilogram-Meter per Second(kg.m/sec)',
  Momentum.poundFootPerHour: 'Pound-Foot per Hour(lb.ft/hr)',
  Momentum.poundFootPerSecond: 'Pound-Foot per Second(lb.ft/sec)',
  Momentum.poundInchPerSecond: 'Pound-Inch per Second(lb.in/sec) ',
};
