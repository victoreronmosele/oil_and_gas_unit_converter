enum HeatConductivity {
  britishThermalUnitsPerHourFeetDegreeFarenheit,
  wattPerMeterCelsius
}

Map<HeatConductivity, String> heatConductivityValuesMap = {
  HeatConductivity.britishThermalUnitsPerHourFeetDegreeFarenheit:
      'British Thermal Units per Hour -Feet -Degree Farenheit(Btu/hr-ft-F)',
  HeatConductivity.wattPerMeterCelsius: 'Watt per Meter Celsius(W/m-C)',
};

Map<HeatConductivity, num> heatConductivityFactorMap = {
  HeatConductivity.britishThermalUnitsPerHourFeetDegreeFarenheit: 1,
  HeatConductivity.wattPerMeterCelsius: 1.7308,
};
