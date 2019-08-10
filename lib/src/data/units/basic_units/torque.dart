enum Torque {
  footOunceForce,
  footPoundForce,
  inchOunceForce,
  inchPoundForce,
  kilogramForceCentimeter,
  kilogramForceMeter,
  kiloNewtonMeter,
  newtonCentimeter,
  newtonMeter
}

Map<Torque, String> torqueValuesMap = {
  Torque.footOunceForce: 'Foot Ounce-force(ft-oz)',
  Torque.footPoundForce: 'Foot Pound-force(ft-lb)',
  Torque.inchOunceForce: 'Inch Ounce-force(in-oz)',
  Torque.inchPoundForce: 'Inch Pound-force(in-lb)',
  Torque.kilogramForceCentimeter: 'Kilogram-force Centimeter(kg-cm)',
  Torque.kilogramForceMeter: 'Kilogram-force Meter(kg-m)',
  Torque.kiloNewtonMeter: 'KiloNewton Meter(kN-m)',
  Torque.newtonCentimeter: 'Newton Centimeter(N-cm)',
  Torque.newtonMeter: 'Newton Meter(N-m)',
};
