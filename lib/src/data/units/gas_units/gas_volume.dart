enum GasVolume {
  barrelOfOilEquivalent,
  cubicMeter,
  millionStandardCubicFeet,
  millionStandardCubicMeters,
  thousandBarrelsOfOilEquivalent,
  thousandCubicMeter,
  thousandStandardCubicFeet,
  tonLiquefiedNaturalGas
}

Map<GasVolume, String> gasVolumeValuesMap = {
  GasVolume.barrelOfOilEquivalent: 'Barrel of Oil Equivalent(BOE)',
  GasVolume.cubicMeter: 'Cubic Meter(m3)',
  GasVolume.millionStandardCubicFeet: 'Million Standard Cubic Feet(MMscf)',
  GasVolume.millionStandardCubicMeters: 'Million Standard Cubic Meters(MMsm3)',
  GasVolume.thousandBarrelsOfOilEquivalent:
      'Thousand Barrels of Oil Equivalent(KBOE)',
  GasVolume.thousandCubicMeter: 'Thousand Cubic Meter(dam3)',
  GasVolume.thousandStandardCubicFeet: 'Thousand Standard Cubic Feet(Mscf)',
  GasVolume.tonLiquefiedNaturalGas: 'Ton Liquefied Natural Gas(ton LNG)',
};

Map<GasVolume, num> gasVolumeFactorMap = {
  GasVolume.barrelOfOilEquivalent: 1,
  GasVolume.cubicMeter: 169.902,
  GasVolume.millionStandardCubicFeet: 0.006,
  GasVolume.millionStandardCubicMeters: 0.0001699,
  GasVolume.thousandBarrelsOfOilEquivalent: 0.001,
  GasVolume.thousandCubicMeter: 0.169902,
  GasVolume.thousandStandardCubicFeet: 6,
  GasVolume.tonLiquefiedNaturalGas: 0.1232067,
};
