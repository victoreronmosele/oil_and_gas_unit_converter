enum LiquefiedNaturalGas {
  barrelOfOilEquivalent,
  millionBarrelsOfOilEquivalent,
  millionCubicFeet,
  thousandBarrelsOfOilEquivalent,
  tonOfLNG
}

Map<LiquefiedNaturalGas, String> liquefiedNaturalGasValuesMap = {
  LiquefiedNaturalGas.barrelOfOilEquivalent: 'Barrel of Oil Equivalent(BOE)',
  LiquefiedNaturalGas.millionBarrelsOfOilEquivalent:
      'Million Barrels of Oil Equivalent(MMBOE)',
  LiquefiedNaturalGas.millionCubicFeet: 'Million Cubic Feet(MMCF) ',
  LiquefiedNaturalGas.thousandBarrelsOfOilEquivalent:
      'Thousand Barrels of Oil Equivalent(KBOE)',
  LiquefiedNaturalGas.tonOfLNG: 'Ton of LNG(ton lng)',
};

Map<LiquefiedNaturalGas, num> liquefiedNaturalGasFactorMap = {
  LiquefiedNaturalGas.barrelOfOilEquivalent: 1,
  LiquefiedNaturalGas.millionBarrelsOfOilEquivalent: 0.000001,
  LiquefiedNaturalGas.millionCubicFeet: 0.0056146,
  LiquefiedNaturalGas.thousandBarrelsOfOilEquivalent: 0.001,
  LiquefiedNaturalGas.tonOfLNG: 0.1152074,
};
