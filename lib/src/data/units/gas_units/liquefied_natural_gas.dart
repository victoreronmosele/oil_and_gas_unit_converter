enum LiquefiedNaturalGas {
  barrelOfOilEquivalent,
  millionBarrelsOfOilEquivalent,
  millionCubicFeet,
  thousandBarrelsOfOilEquivalent,
  tonOfLNG
}

Map<LiquefiedNaturalGas, String> liquefiedNaturalGasValuesMap = {
  LiquefiedNaturalGas.barrelOfOilEquivalent: 'Barrel of Oil Equivalent(BOE)',
  LiquefiedNaturalGas.millionBarrelsOfOilEquivalent: 'Million Barrels of Oil Equivalent(MMBOE)',
  LiquefiedNaturalGas.millionCubicFeet: 'Million Cubic Feet(MMCF) ',
  LiquefiedNaturalGas.thousandBarrelsOfOilEquivalent: 'Thousand Barrels of Oil Equivalent(KBOE)',
  LiquefiedNaturalGas.tonOfLNG: 'Ton of LNG(ton lng)',
};
