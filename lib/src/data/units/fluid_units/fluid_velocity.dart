enum FluidVelocity {
  feetPerDay,
  feetPerHour,
  feetPerMinute,
  feetPerSecond,
  meterPerDay,
  meterPerHour,
  meterPerMinute,
  meterPerSecond
}

Map<FluidVelocity, String> fluidVelocityValuesMap = {
  FluidVelocity.feetPerDay: 'Feet per Day(ft/d)',
  FluidVelocity.feetPerHour: 'Feet per Hour(ft/hr)',
  FluidVelocity.feetPerMinute: 'Feet per Minute(ft/min)',
  FluidVelocity.feetPerSecond: 'Feet per Second(ft/s)',
  FluidVelocity.meterPerDay: 'Meter per Day(m/d)',
  FluidVelocity.meterPerHour: 'Meter per Hour(m/hr)',
  FluidVelocity.meterPerMinute: 'Meter per Minute(m/min)',
  FluidVelocity.meterPerSecond: 'Meter per Second(m/s)',
};

Map<FluidVelocity, num> fluidVelocityFactorMap = {
  FluidVelocity.feetPerDay: 1,
  FluidVelocity.feetPerHour: 0.0416667,
  FluidVelocity.feetPerMinute: 0.0006944,
  FluidVelocity.feetPerSecond: 0.0000116,
  FluidVelocity.meterPerDay: 0.3048,
  FluidVelocity.meterPerHour: 0.0127,
  FluidVelocity.meterPerMinute: 0.0002117,
  FluidVelocity.meterPerSecond: 0.0000035,
};
