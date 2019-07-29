enum GasConversions {
  gasInjectionRate,
  gasProductionIndex,
  gasProductionRate,
  gasVolume,
  liquefiedNaturalGas,
  specificVolume,
  volume,
}

Map<GasConversions, String> gasConversionsValuesMap = {
  GasConversions.gasInjectionRate: 'Gas Injection Rate',
  GasConversions.gasProductionIndex: 'Gas Production Index',
  GasConversions.gasProductionRate: 'Gas Production Rate',
  GasConversions.gasVolume: 'Gas Volume',
  GasConversions.liquefiedNaturalGas: 'Liquefied Natural Gas',
  GasConversions.specificVolume: 'Specific Volume',
  GasConversions.volume: 'Volume',
};
