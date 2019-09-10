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

Map<DistributedForce, num> distributedForceFactorMap = {
  DistributedForce.dekaNewtonPerMeter: 1,
  DistributedForce.kilogramPerMeter: 1.0195177,
  DistributedForce.kiloNewtonPerCentimeter: 0.0001,
  DistributedForce.kilopoundPerInch: 0.0000571,
  DistributedForce.newtonPerMeter: 9.9999708,
  DistributedForce.poundforcePerFeet: 0.685068,
};
