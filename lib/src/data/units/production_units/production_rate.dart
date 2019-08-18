enum ProductionRate { cubicMeterPerDay, stbPerD }

Map<ProductionRate, String> productionRateValuesMap = {
  ProductionRate.cubicMeterPerDay: 'Cubic Meter per Day(m3/d)',
  ProductionRate.stbPerD: 'STB/d(STB/d)',
};

Map<ProductionRate, num> productionRateFactorMap = {
  ProductionRate.cubicMeterPerDay: 1,
  ProductionRate.stbPerD: 6.2893082,
};
