enum PipeCapacity { barrelPerFeet, cubicMeterPerMeter }

Map<PipeCapacity, String> pipeCapacityValuesMap = {
  PipeCapacity.barrelPerFeet: 'Barrel per Feet(bbl/ft)',
  PipeCapacity.cubicMeterPerMeter: 'Cubic Meter per Meter(m3/m)',
};

Map<PipeCapacity, num> pipeCapacityFactorMap = {
  PipeCapacity.barrelPerFeet: 1,
  PipeCapacity.cubicMeterPerMeter: 0.521654,
};
