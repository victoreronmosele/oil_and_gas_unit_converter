enum TorsionalDamplingCoefficient {
  newtonMeterSecondPerRadian,
  poundInchSecondPerRadian
}

Map<TorsionalDamplingCoefficient, String>
    torsionalDamplingCoefficientValuesMap = {
  TorsionalDamplingCoefficient.newtonMeterSecondPerRadian:
      'Newton Meter Second per Radian(N-m-s/rad)',
  TorsionalDamplingCoefficient.poundInchSecondPerRadian:
      'Pound Inch Second per Radian(lb-in-s/rad)',
};

Map<TorsionalDamplingCoefficient, num> torsionalDamplingCoefficientFactorMap = {
  TorsionalDamplingCoefficient.newtonMeterSecondPerRadian: 1,
  TorsionalDamplingCoefficient.poundInchSecondPerRadian: 1.01595,
};
