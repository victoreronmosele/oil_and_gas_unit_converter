enum HeatCapacity {
  britishThermalUnitPerPoundDegreeFarenheit,
  joulePerKilogramCelsius
}

Map<HeatCapacity, String> heatCapacityValuesMap = {
  HeatCapacity.britishThermalUnitPerPoundDegreeFarenheit:
      'British Thermal Units per Pound - Degree Farenheit(Btu/lb-F)',
  HeatCapacity.joulePerKilogramCelsius: 'Joule per Kilogram Celsius(J/kg-C)',
};

Map<HeatCapacity, num> heatCapacityFactorMap = {
  HeatCapacity.britishThermalUnitPerPoundDegreeFarenheit: 1,
  HeatCapacity.joulePerKilogramCelsius: 4186.8,
};
