enum FuelVolume { barrel, gallon, liter, milliliter }

Map<FuelVolume, String> fuelVolumeValuesMap = {
  FuelVolume.barrel: 'Barrel(bbl)',
  FuelVolume.gallon: 'Gallon(gal)',
  FuelVolume.liter: 'Liter(L)',
  FuelVolume.milliliter: 'Milliliter(mL)',
};

Map<FuelVolume, num> fuelVolumeFactorMap = {
  FuelVolume.barrel: 1,
  FuelVolume.gallon: 42,
  FuelVolume.liter: 158.9872949,
  FuelVolume.milliliter: 158987.294928,
};
