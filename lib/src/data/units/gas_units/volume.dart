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
