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
