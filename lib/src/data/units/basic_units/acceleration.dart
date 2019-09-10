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

Map<Acceleration, num> accelerationFactorMap = {
  Acceleration.centimeterPerSquareSecond: 1,
  Acceleration.footPerSquareSecond: 0.0328084,
  Acceleration.galileo: 1,
  Acceleration.grav: 0.0010197,
  Acceleration.gUnit: 0.0010197,
  Acceleration.inchPerSquareSecond: 0.3937008,
  Acceleration.kilometerPerHourPerSecond: 0.036,
  Acceleration.kilometerPerSquareSecond: 0.00001,
  Acceleration.knotPerSecond: 0.0194347,
  Acceleration.meterPerSquareSecond: 0.01,
  Acceleration.milePerHourPerSecond: 0.0223694,
  Acceleration.milePerSquareHour: 80.5282654,
  Acceleration.milePerSquareSecond: 0.0000062,
  Acceleration.millimeterPerSquareSecond: 10
};
