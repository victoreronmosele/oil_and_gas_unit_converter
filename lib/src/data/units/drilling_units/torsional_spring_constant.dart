enum TorsionalSpringConstant { newtonMeterPerRadian, poundInchPerRadian }

Map<TorsionalSpringConstant, String> torsionalSpringConstantValuesMap = {
  TorsionalSpringConstant.newtonMeterPerRadian:
      'Newton Meter per Radian(N-m/rad)',
  TorsionalSpringConstant.poundInchPerRadian:
      'Pound Inch per Radian(lb-in/rad)',
};

Map<TorsionalSpringConstant, num> torsionalSpringConstantFactorMap = {
  TorsionalSpringConstant.newtonMeterPerRadian: 1,
  TorsionalSpringConstant.poundInchPerRadian: 1.0159504,
};
