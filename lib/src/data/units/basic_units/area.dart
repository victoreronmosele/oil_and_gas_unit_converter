enum Area {
  acre,
  hectare,
  squareCentimeter,
  squareDecimeter,
  squareFoot,
  squareInch,
  squareKilometer,
  squareMeter,
  squareMile,
  squareMillimeter,
  squareYard
}

Map<Area, String> areaValuesMap = {
  Area.acre: 'Acre(acre)',
  Area.hectare: 'Hectare(ha)',
  Area.squareCentimeter: 'Square Centimeter(cm2)',
  Area.squareDecimeter: 'Square Deciimeter(dm2)',
  Area.squareFoot: 'Square Foot(ft2)',
  Area.squareInch: 'Square Inch(in2)',
  Area.squareKilometer: 'Square Kilometer(km2)',
  Area.squareMeter: 'Square Meter(m2)',
  Area.squareMile: 'Square Mile(mi2)',
  Area.squareMillimeter: 'Square Millimeter(mm2)',
  Area.squareYard: 'Square Yard(yd2)'
};

Map<Area, num> areaFactorMap = {
  Area.acre: 1,
  Area.hectare: 0.4046856,
  Area.squareCentimeter: 40468564.224,
  Area.squareDecimeter: 404685.64224,
  Area.squareFoot: 43560,
  Area.squareInch: 6272640,
  Area.squareKilometer: 0.0040469,
  Area.squareMeter: 4046.8564224,
  Area.squareMile: 0.0015625,
  Area.squareMillimeter: 4046856422.4000006,
  Area.squareYard: 4840,
};
