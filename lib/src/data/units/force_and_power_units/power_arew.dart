enum PowerArew { horsePowerPerSquareInch, kilowattPerSquareMillimeter }

Map<PowerArew, String> powerArewValuesMap = {
  PowerArew.horsePowerPerSquareInch: 'Horse Power per Square Inch(HP/in2)',
  PowerArew.kilowattPerSquareMillimeter:
      'Kilowatt per Square Millimeter(kW/mm2)',
};

Map<PowerArew, num> powerArewFactorMap = {
  PowerArew.horsePowerPerSquareInch: 1,
  PowerArew.kilowattPerSquareMillimeter: 0.001156,
};
