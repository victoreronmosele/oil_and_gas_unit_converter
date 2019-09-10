enum FootageCost {
  dollarPerFeet,
  dollarPerMeter,
  thousandDollarsPerFeet,
  thousandDollarsPerMeters
}

Map<FootageCost, String> footageCostValuesMap = {
  FootageCost.dollarPerFeet: 'Dollar per Feet(\$/ft)',
  FootageCost.dollarPerMeter: 'Dollar per Meter(\$/m)',
  FootageCost.thousandDollarsPerFeet: 'Thousand Dollars per Feet(\$1000/ft)',
  FootageCost.thousandDollarsPerMeters: 'Thousand Dollars per Meter(\$1000/m) ',
};

Map<FootageCost, num> footageCostFactorMap = {
  FootageCost.dollarPerFeet: 1,
  FootageCost.dollarPerMeter: 3.2810014,
  FootageCost.thousandDollarsPerFeet: 0.001,
  FootageCost.thousandDollarsPerMeters: 0.003281,
};
