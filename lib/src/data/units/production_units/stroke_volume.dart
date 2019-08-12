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
