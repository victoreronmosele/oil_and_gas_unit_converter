enum NozzleSpeed { feetPerSecond, meterPerSecond }

Map<NozzleSpeed, String> nozzleSpeedValuesMap = {
  NozzleSpeed.feetPerSecond: 'Feet per Second(ft/s)',
  NozzleSpeed.meterPerSecond: 'Meter per Second(m/s)',
};

Map<NozzleSpeed, num> nozzleSpeedFactorMap = {
  NozzleSpeed.feetPerSecond: 1,
  NozzleSpeed.meterPerSecond: 0.3048,
};
