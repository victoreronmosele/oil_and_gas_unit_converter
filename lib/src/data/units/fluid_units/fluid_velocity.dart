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
