enum FractureConductivity { darcyInch, mum2m }

Map<FractureConductivity, String> fractureConductivityValuesMap = {
  FractureConductivity.darcyInch: 'Darcy Inch(darcy-in)',
  FractureConductivity.mum2m: 'mu.m2-m(mu.m2-m)',
};

Map<FractureConductivity, num> fractureConductivityFactorMap = {
  FractureConductivity.darcyInch : 1, 
   FractureConductivity.mum2m : 22.7837142, 
   };
