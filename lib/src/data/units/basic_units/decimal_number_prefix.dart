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
