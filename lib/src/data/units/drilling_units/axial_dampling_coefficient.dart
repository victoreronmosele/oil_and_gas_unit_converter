enum AxialDamplingCoefficient { newtonSecondPerMeter, poundSecondPerInch }

Map<AxialDamplingCoefficient, String> axialDamplingCoefficientValuesMap = {
  AxialDamplingCoefficient.newtonSecondPerMeter:
      'Newton Second per Meter(N-sec/m)',
  AxialDamplingCoefficient.poundSecondPerInch: 'Pound Second per Inch(lb-s/in)',
};

Map<AxialDamplingCoefficient, num> axialDamplingCoefficientFactorMap = {
  AxialDamplingCoefficient.newtonSecondPerMeter: 1,
  AxialDamplingCoefficient.poundSecondPerInch: 1.016,
};
