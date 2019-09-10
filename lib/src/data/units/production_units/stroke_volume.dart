enum StrokeVolume {
  barrelPerStroke,
  cubicMeterPerStroke,
  gallonPerStroke,
  literPerStroke
}

Map<StrokeVolume, String> strokeVolumeValuesMap = {
  StrokeVolume.barrelPerStroke: 'Barrel per Stroke(bbl/stk)',
  StrokeVolume.cubicMeterPerStroke: 'Cubic Meter per Stroke(m3/stk)',
  StrokeVolume.gallonPerStroke: 'Gallon per stroke(gal/stk)',
  StrokeVolume.literPerStroke: 'Liter per Stroke(L/stk)',
};

Map<StrokeVolume, num> strokeVolumeFactorMap = {
  StrokeVolume.barrelPerStroke: 1,
  StrokeVolume.cubicMeterPerStroke: 0.1590336,
  StrokeVolume.gallonPerStroke: 42.01681,
  StrokeVolume.literPerStroke: 159.033501,
};
