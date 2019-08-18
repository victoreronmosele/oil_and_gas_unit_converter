enum ElectricCurrent {
  ampere,
  biot,
  centiampere,
  gilbert,
  kiloampere,
  milliampere,
  volt,
  watt
}

Map<ElectricCurrent, String> electricCurrentValuesMap = {
  ElectricCurrent.ampere: 'Ampere(amp)',
  ElectricCurrent.biot: 'Biot(biot)',
  ElectricCurrent.centiampere: 'Centiampere(camp)',
  ElectricCurrent.gilbert: 'Gilbert(gilbert)',
  ElectricCurrent.kiloampere: 'Kiloampere(kamp)',
  ElectricCurrent.milliampere: 'Milliampere(mamp)',
  ElectricCurrent.volt: 'Volt/ohm(v/ohm)',
  ElectricCurrent.watt: 'Watt/volt(w/v)',
};

Map<ElectricCurrent, num> electricCurrentFactorMap = {
  ElectricCurrent.ampere :1 , 
  ElectricCurrent.biot : 0.1, 
  ElectricCurrent.centiampere :100 , 
  ElectricCurrent.gilbert : 1.2566371, 
  ElectricCurrent.kiloampere : 0.001, 
  ElectricCurrent.milliampere : 1000, 
  ElectricCurrent.volt :1 , 
  ElectricCurrent.watt : 1, 
  };
