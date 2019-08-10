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
