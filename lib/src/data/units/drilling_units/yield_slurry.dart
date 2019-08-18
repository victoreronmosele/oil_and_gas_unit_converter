enum YieldSlurry { cubicFeetPerSack, cubicMetersPerSack, gallonsPerSack }

Map<YieldSlurry, String> yieldSlurryValuesMap = {
  YieldSlurry.cubicFeetPerSack: 'Cubic Feet per Sack(ft3/sk) ',
  YieldSlurry.cubicMetersPerSack: 'Cubic Meters per Sack(m3/sk) ',
  YieldSlurry.gallonsPerSack: 'Gallons per Sack(gal/sk)',
};

Map<YieldSlurry, num> yieldSlurryFactorMap = {
  YieldSlurry.cubicFeetPerSack: 1,
  YieldSlurry.cubicMetersPerSack: 0.028317,
  YieldSlurry.gallonsPerSack: 7.479991,
};
