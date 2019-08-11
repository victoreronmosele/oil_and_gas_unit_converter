enum HeatCapacity {
  britishThermalUnitPerPoundDegreeFarenheit,
  joulePerKilogramCelsius
}

Map<HeatCapacity, String> heatCapacityValuesMap = {
  HeatCapacity.britishThermalUnitPerPoundDegreeFarenheit:
      'British Thermal Units per Pound - Degree Farenheit(Btu/lb-F)',
  HeatCapacity.joulePerKilogramCelsius: 'Joule per Kilogram Celsius(J/kg-C)',
};
