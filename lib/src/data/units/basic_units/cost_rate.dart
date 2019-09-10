enum CostRate { dollarsPerDay, dollarsPerHour, thousandDollarsPerDay }

Map<CostRate, String> costRateValuesMap = {
  CostRate.dollarsPerDay: 'Dollars per Day(\$/d)',
  CostRate.dollarsPerHour: 'Dollars per Hour(\$/hr)',
  CostRate.thousandDollarsPerDay: 'Thousand Dollars per Day(1000\$/d)'
};

Map<CostRate, num> costRateFactorMap = {
  CostRate.dollarsPerDay: 1,
  CostRate.dollarsPerHour: 0.0416667,
  CostRate.thousandDollarsPerDay: 0.001,
};
