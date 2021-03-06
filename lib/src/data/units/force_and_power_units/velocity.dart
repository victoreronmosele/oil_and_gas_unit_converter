enum Velocity {
  feetPerDay,
  feetPerHour,
  feetPerMinute,
  feetPerSecond,
  kilometersPerHour,
  kilometersPerMinute,
  kilometersPerSecond,
  knot,
  mach,
  meterPerDay,
  meterPerHour,
  meterPerMinute,
  meterPerSecond,
  milesPerHour,
  milesPerMinute,
  milesPerSecond,
}

Map<Velocity, String> velocityValuesMap = {
  Velocity.feetPerDay: 'Feet per Day(ft/d)',
  Velocity.feetPerHour: 'Feet per Hour(ft/hr)',
  Velocity.feetPerMinute: 'Feet per Minute(ft/min)',
  Velocity.feetPerSecond: 'Feet per Second(ft/s)',
  Velocity.kilometersPerHour: 'Kilometers per Hour(kph)',
  Velocity.kilometersPerMinute: 'Kilometers per Minute(k/min)',
  Velocity.kilometersPerSecond: 'Kilometers per Second(k/sec)',
  Velocity.knot: 'Knot(knot)',
  Velocity.mach: 'Mach(mach)',
  Velocity.meterPerDay: 'Meter per Day(m/d)',
  Velocity.meterPerHour: 'Meter per Hour(m/hr)',
  Velocity.meterPerMinute: 'Meter per Minute(m/min)',
  Velocity.meterPerSecond: 'Meter per Second(m/s)',
  Velocity.milesPerHour: 'Miles per Hour(mph)',
  Velocity.milesPerMinute: 'Miles per Minute(mi/min)',
  Velocity.milesPerSecond: 'Miles per Second(mi/sec)',
};

Map<Velocity, num> velocityFactorMap = {
  Velocity.feetPerDay: 1,
  Velocity.feetPerHour: 0.0416667,
  Velocity.feetPerMinute: 0.0006944,
  Velocity.feetPerSecond: 0.0000116,
  Velocity.kilometersPerHour: 0.0000127,
  Velocity.kilometersPerMinute: 0,
  Velocity.kilometersPerSecond: 0,
  Velocity.knot: 0.0000069,
  Velocity.mach: 0,
  Velocity.meterPerDay: 0.3048,
  Velocity.meterPerHour: 0.0127,
  Velocity.meterPerMinute: 0.0002117,
  Velocity.meterPerSecond: 0.0000035,
  Velocity.milesPerHour: 0.0000079,
  Velocity.milesPerMinute: 0,
  Velocity.milesPerSecond: 0,
};
