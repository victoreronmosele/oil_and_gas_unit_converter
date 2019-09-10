enum DecimalNumberPrefix {
  baseUnit,
  centi,
  deca,
  deci,
  giga,
  hecto,
  kilo,
  mega,
  micro,
  milli
}

Map<DecimalNumberPrefix, String> decimalNumberPrefixValuesMap = {
  DecimalNumberPrefix.baseUnit: 'Base Unit(0)',
  DecimalNumberPrefix.centi: 'Centi(c)',
  DecimalNumberPrefix.deca: 'Deca(da)',
  DecimalNumberPrefix.deci: 'Deci(d)',
  DecimalNumberPrefix.giga: 'Giga(G)',
  DecimalNumberPrefix.hecto: 'Hecto(h)',
  DecimalNumberPrefix.kilo: 'Kilo(k)',
  DecimalNumberPrefix.mega: 'Mega(M)',
  DecimalNumberPrefix.micro: 'Micro(mic)',
  DecimalNumberPrefix.milli: 'Milli(m)'
};

Map<DecimalNumberPrefix, num> decimalNumberPrefixFactorMap = {
  DecimalNumberPrefix.baseUnit: 1,
  DecimalNumberPrefix.centi: 100,
  DecimalNumberPrefix.deca: 0.1,
  DecimalNumberPrefix.deci: 10,
  DecimalNumberPrefix.giga: 0,
  DecimalNumberPrefix.hecto: 0.01,
  DecimalNumberPrefix.kilo: 0.001,
  DecimalNumberPrefix.mega: 0.000001,
  DecimalNumberPrefix.micro: 1000000,
  DecimalNumberPrefix.milli: 1000,
};
