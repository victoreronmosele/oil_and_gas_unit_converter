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
