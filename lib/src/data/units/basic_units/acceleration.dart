enum Acceleration {
  centimeterPerSquareSecond,
  footPerSquareSecond,
  galileo,
  grav,
  gUnit,
  inchPerSquareSecond,
  kilometerPerHourPerSecond,
  kilometerPerSquareSecond,
  knotPerSecond,
  meterPerSquareSecond,
  milePerHourPerSecond,
  milePerSquareHour,
  milePerSquareSecond,
  millimeterPerSquareSecond
}

Map<Acceleration, String> accelerationValuesMap = {
  Acceleration.centimeterPerSquareSecond: 'Centimeter per Square Second(cm/s2)',
  Acceleration.footPerSquareSecond: 'Foot per Square Second(ft/s2)',
  Acceleration.galileo: 'Galileo(gal)',
  Acceleration.grav: 'Grav(grav)',
  Acceleration.gUnit: 'G-unit(G)',
  Acceleration.inchPerSquareSecond: 'Inch per Square Second(in/s2)',
  Acceleration.kilometerPerHourPerSecond:
      'Kilometer per Hour per Second(kph/s)',
  Acceleration.kilometerPerSquareSecond: 'Kilometer per Square Second(km/s2)',
  Acceleration.knotPerSecond: 'Knot per Second(knot/s)',
  Acceleration.meterPerSquareSecond: 'Meter per Square Second(m/s2)',
  Acceleration.milePerHourPerSecond: 'Mile per Hour per Second(mph/s)',
  Acceleration.milePerSquareHour: 'Mile per Square Hour(mi/hr2)',
  Acceleration.milePerSquareSecond: 'Mile per Square Second(mi/s2)',
  Acceleration.millimeterPerSquareSecond: 'Millimeter per Square Second(mm/s2)'
};
