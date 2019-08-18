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

Map<Torque, num> torqueFactorMap = {
  Torque.footOunceForce : 1, 
   Torque.footPoundForce : 0.0625, 
   Torque.inchOunceForce : 12.0000768, 
   Torque.inchPoundForce : 0.7500003, 
   Torque.kilogramForceCentimeter : 0.8640934, 
   Torque.kilogramForceMeter : 0.0086409, 
   Torque.kiloNewtonMeter : 0.0000847, 
   Torque.newtonCentimeter : 8.4738639, 
   Torque.newtonMeter : 0.0847386, 
   };