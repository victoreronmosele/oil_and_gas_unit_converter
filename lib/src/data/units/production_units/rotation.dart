enum Rotation { radianPerSecond, rotationPerMinute }

Map<Rotation, String> rotationValuesMap = {
  Rotation.radianPerSecond: 'Radian per Second(rad/sec)',
  Rotation.rotationPerMinute: 'Rotation per Minute(rpm)',
};

Map<Rotation, num> rotationFactorMap = {
  Rotation.radianPerSecond: 1,
  Rotation.rotationPerMinute: 9.551099,
};
