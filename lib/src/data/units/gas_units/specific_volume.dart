enum SpecificVolume {
  barrelsPerTonUK,
  barrelsPerTonUS,
  cubicFootPerPound,
  cubicInchPerPound,
  cubicMeterPerKilogram,
  gallonsUKPerPound,
  gallonsUSPerPound,
  literPerGram,
  literPerKilogram
}

Map<SpecificVolume, String> specificVolumeValuesMap = {
  SpecificVolume.barrelsPerTonUK: 'Barrels per Ton (U.K.)(bbl/UK ton)',
  SpecificVolume.barrelsPerTonUS: 'Barrels per Ton (U.S.)(bbl/US ton)',
  SpecificVolume.cubicFootPerPound: 'Cubic Foot per Pound(ft3/lb)',
  SpecificVolume.cubicInchPerPound: 'Cubic Inch per Pound(in3/lb)',
  SpecificVolume.cubicMeterPerKilogram: 'Cubic Meter per Kilogram(m3/kg)',
  SpecificVolume.gallonsUKPerPound: 'Gallons (U.K.) per Pound(UK gal/lb)',
  SpecificVolume.gallonsUSPerPound: 'Gallons (U.S.) per Pound(US gal/lb)',
  SpecificVolume.literPerGram: 'Liter per Gram(l/g)',
  SpecificVolume.literPerKilogram: 'Liter per Kilogram(l/kg)',
};

Map<SpecificVolume, num> specificVolumeFactorMap = {
  SpecificVolume.barrelsPerTonUK: 1,
  SpecificVolume.barrelsPerTonUS: 0.8928571,
  SpecificVolume.cubicFootPerPound: 0.0025065,
  SpecificVolume.cubicInchPerPound: 4.33125,
  SpecificVolume.cubicMeterPerKilogram: 0.0001565,
  SpecificVolume.gallonsUKPerPound: 0.0156126,
  SpecificVolume.gallonsUSPerPound: 0.01875,
  SpecificVolume.literPerGram: 0.0001565,
  SpecificVolume.literPerKilogram: 0.0001565,
};
