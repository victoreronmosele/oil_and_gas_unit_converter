enum NozzleSize {
  millimeter,
  oneEightPerInch,
  oneSixteenthPerInch,
  oneSixtyFourthPerInch,
  oneThirtySecondPerInch
}

Map<NozzleSize, String> nozzleSizeValuesMap = {
  NozzleSize.millimeter: 'Millimeter(mm)',
  NozzleSize.oneEightPerInch: 'One Eighth per Inch(1/8 in)',
  NozzleSize.oneSixteenthPerInch: 'One Sixteenth per Inch(1/16 in)',
  NozzleSize.oneSixtyFourthPerInch: 'One Sixty-fourth per Inch(1/64 in)',
  NozzleSize.oneThirtySecondPerInch: 'One Thirty-second per Inch(1/32in)',
};

Map<NozzleSize, num> nozzleSizeFactorMap = {
  NozzleSize.millimeter: 1,
  NozzleSize.oneEightPerInch: 0.3149606,
  NozzleSize.oneSixteenthPerInch: 0.6299213,
  NozzleSize.oneSixtyFourthPerInch: 2.519685,
  NozzleSize.oneThirtySecondPerInch: 1.2598425,
};
