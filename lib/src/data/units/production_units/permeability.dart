enum Permeability { darcy, milliDarcy }

Map<Permeability, String> permeabilityValuesMap = {
  Permeability.darcy: 'Darcy(darcy)',
  Permeability.milliDarcy: 'Milli Darcy(md)',
};

Map<Permeability, num> permeabilityFactorMap = {
  Permeability.darcy : 1, 
  Permeability.milliDarcy : 1000, 
  };
