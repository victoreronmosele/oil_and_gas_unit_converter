enum DistributedForce {
  dekaNewtonPerMeter,
  kilogramPerMeter,
  kiloNewtonPerCentimeter,
  kilopoundPerInch,
  newtonPerMeter,
  poundforcePerFeet
}

Map<DistributedForce, String> distributedForceValuesMap = {
  DistributedForce.dekaNewtonPerMeter: 'Deka Newton per Meter(daN/m)',
  DistributedForce.kilogramPerMeter: 'Kilogram per Meter(kg/m)',
  DistributedForce.kiloNewtonPerCentimeter: 'Kilonewton per Centimeter(kN/cm)',
  DistributedForce.kilopoundPerInch: 'Kilopound per Inch(klb/in)',
  DistributedForce.newtonPerMeter: 'Newton per Meter(N/m)',
  DistributedForce.poundforcePerFeet: 'Poundforce per Feet(lbf/ft)'
};
