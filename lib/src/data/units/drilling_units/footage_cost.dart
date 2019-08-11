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
