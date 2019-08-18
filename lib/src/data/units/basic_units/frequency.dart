enum Frequency {
  gigahertz,
  hertz,
  kilohertz,
  megahertz,
  radianPerHour,
  radianPerMinute,
  radianPerSecond,
  revolutionsPerHour,
  revolutionsPerMinute,
  revolutionsPerSeconds
}

Map<Frequency, String> frequencyValuesMap = {
  Frequency.gigahertz: 'Gigahertz(gHz)',
  Frequency.hertz: 'Hertz(Hz)',
  Frequency.kilohertz: ' Kilohertz(kHz)',
  Frequency.megahertz: 'Megahertz(mHz)',
  Frequency.radianPerHour: 'Radian/hour(rad/hr)',
  Frequency.radianPerMinute: 'Radian/minute(rad/min)',
  Frequency.radianPerSecond: 'Radian/second(rad/sec)',
  Frequency.revolutionsPerHour: 'Revolutions/hour(RPH)',
  Frequency.revolutionsPerMinute: 'Revolutions/minute(RPM)',
  Frequency.revolutionsPerSeconds: 'Revolutions/second(RPS)',
};

Map<Frequency, num> frequencyFactorMap = {
  Frequency.gigahertz: 1,
  Frequency.hertz: 1000000000,
  Frequency.kilohertz: 1000000,
  Frequency.megahertz: 1000,
  Frequency.radianPerHour: 22619473230167.613,
  Frequency.radianPerMinute: 376991220502.7927,
  Frequency.radianPerSecond: 6283187008.379887,
  Frequency.revolutionsPerHour: 3600000000000,
  Frequency.revolutionsPerMinute: 60000000000,
  Frequency.revolutionsPerSeconds: 1000000000,
};
