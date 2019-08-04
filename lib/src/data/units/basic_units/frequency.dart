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
