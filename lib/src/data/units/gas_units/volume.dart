enum VolumeGas {
  barrelPetroleum,
  cubicCentimeter,
  cubicDecimeter,
  cubicFoot,
  cubicInch,
  cubicMeter,
  cubicYard,
  fluidOunce,
  gallon,
  liter,
  quartLiquid
}

Map<VolumeGas, String> volumeGasValuesMap = {
  VolumeGas.barrelPetroleum: 'Barrel (Petroleum)(bbl)',
  VolumeGas.cubicCentimeter: 'Cubic Centimeter(cm3)',
  VolumeGas.cubicDecimeter: 'Cubic Decimeter(dm3)',
  VolumeGas.cubicFoot: 'Cubic Foot(ft3)',
  VolumeGas.cubicInch: 'Cubic Inch(in3)',
  VolumeGas.cubicMeter: 'Cubic Meter(m3)',
  VolumeGas.cubicYard: 'Cubic Yard(yd3)',
  VolumeGas.fluidOunce: 'Fluid Ounce(fl oz)',
  VolumeGas.gallon: 'Gallon(gal)',
  VolumeGas.liter: 'Liter(L)',
  VolumeGas.quartLiquid: 'Quart - Liquid(qt)',
};

Map<VolumeGas, num> volumeGasFactorMap = {
  VolumeGas.barrelPetroleum: 1,
  VolumeGas.cubicCentimeter: 158987.2949285,
  VolumeGas.cubicDecimeter: 1589.8729493,
  VolumeGas.cubicFoot: 5.6145833,
  VolumeGas.cubicInch: 9702,
  VolumeGas.cubicMeter: 0.1589873,
  VolumeGas.cubicYard: 0.2079475,
  VolumeGas.fluidOunce: 5376,
  VolumeGas.gallon: 42,
  VolumeGas.liter: 158.9872949,
  VolumeGas.quartLiquid: 168,
};
