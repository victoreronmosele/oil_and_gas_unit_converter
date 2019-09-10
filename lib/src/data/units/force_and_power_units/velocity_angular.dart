enum VelocityAngular {
  degreesPerHour,
  degreesPerMinute,
  degreesPerSecond,
  radiansPerHour,
  radiansPerMinute,
  radiansPerSecond,
  revolutionsPerHour,
  revolutionsPerMinute,
  revolutionsPerSecond
}

Map<VelocityAngular, String> velocityAngularValuesMap = {
  VelocityAngular.degreesPerHour: 'Degrees per Hour(deg/hr)',
  VelocityAngular.degreesPerMinute: 'Degrees per Minute(deg/min)',
  VelocityAngular.degreesPerSecond: 'Degrees per Second(deg/sec)',
  VelocityAngular.radiansPerHour: 'Radians per Hour(rad/hr)',
  VelocityAngular.radiansPerMinute: 'Radians per Minute(rad/min)',
  VelocityAngular.radiansPerSecond: 'Radians per Second(rad/sec)',
  VelocityAngular.revolutionsPerHour: 'Revolutions per Hour(RPH) ',
  VelocityAngular.revolutionsPerMinute: 'Revolutions per Minute(RPM)',
  VelocityAngular.revolutionsPerSecond: 'Revolutions per Second(RPS)',
};

Map<VelocityAngular, num> velocityAngularFactorMap = {
  VelocityAngular.degreesPerHour: 1,
  VelocityAngular.degreesPerMinute: 0.0166667,
  VelocityAngular.degreesPerSecond: 0.0002778,
  VelocityAngular.radiansPerHour: 0.0174533,
  VelocityAngular.radiansPerMinute: 0.0002909,
  VelocityAngular.radiansPerSecond: 0.0000048,
  VelocityAngular.revolutionsPerHour: 0.0027778,
  VelocityAngular.revolutionsPerMinute: 0.0000463,
  VelocityAngular.revolutionsPerSecond: 0,
};
