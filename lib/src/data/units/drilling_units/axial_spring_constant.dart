enum AxialSpringConstant { newtonPerMeter, poundPerInch }

Map<AxialSpringConstant, String> axialSpringConstantValuesMap = {
  AxialSpringConstant.newtonPerMeter: 'Newton per Meter(N/m)',
  AxialSpringConstant.poundPerInch: 'Pound per Inch(lb/in)',
};

Map<AxialSpringConstant, num> axialSpringConstantFactorMap = {
  AxialSpringConstant.newtonPerMeter: 1,
  AxialSpringConstant.poundPerInch: 1.016,
};
