enum DrillingConversions {
  axialDamplingCoefficient,
  axialSpringConstant,
  dogleg,
  drillingRate,
  footageCost,
  mudWeight,
  pressureGradient,
  pumpingAndFlowRate,
  torsionalDamplingCoefficient,
  torsionalSpringConstant,
  yieldSlurry
}

Map<DrillingConversions, String> drillingConversionsValuesMap = {
  DrillingConversions.axialDamplingCoefficient: 'Axial Dampling Coefficient',
  DrillingConversions.axialSpringConstant: 'Axial Spring Constant',
  DrillingConversions.dogleg: 'Dogleg',
  DrillingConversions.drillingRate: 'Drilling Rate',
  DrillingConversions.footageCost: 'Footage Cost',
  DrillingConversions.mudWeight: 'Mud Weight',
  DrillingConversions.pressureGradient: 'Pressure Gradient',
  DrillingConversions.pumpingAndFlowRate: 'Pumping and Flow Rate',
  DrillingConversions.torsionalDamplingCoefficient:
      'Torsional Dampling Coefficient',
  DrillingConversions.torsionalSpringConstant: 'Torsional Spring Constant',
  DrillingConversions.yieldSlurry: 'Yield Slurry'
};
