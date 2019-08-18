enum CrudeOil {
  barrrelPetroleum,
  barrelOfOilEquivalent,
  gallon,
  kiloliter,
  millionBarrelsOfOilEquivalent,
  thousandBarrelsOfOilEquivalent,
  tonneOfOilEquivalent
}

Map<CrudeOil, String> crudeOilValuesMap = {
  CrudeOil.barrrelPetroleum: 'Barrel (Petroleum)(bbl)',
  CrudeOil.barrelOfOilEquivalent: 'Barrel of Oil Equivalent(BOE)',
  CrudeOil.gallon: 'Gallon(gal)',
  CrudeOil.kiloliter: 'Kiloliter(kL)',
  CrudeOil.millionBarrelsOfOilEquivalent:
      'Million Barrels of Oil Equivalent(MMBOE)',
  CrudeOil.thousandBarrelsOfOilEquivalent:
      'Thousand Barrels of Oil Equivalent(KBOE)',
  CrudeOil.tonneOfOilEquivalent: 'Tonne of Oil Equivalent(toe)',
};

Map<CrudeOil, num> crudeOilFactorMap = {
  CrudeOil.barrrelPetroleum :1 , 
  CrudeOil.barrelOfOilEquivalent :1 , 
  CrudeOil.gallon : 42, 
  CrudeOil.kiloliter :  0.1589873, 
  CrudeOil.millionBarrelsOfOilEquivalent : 0.000001, 
  CrudeOil.thousandBarrelsOfOilEquivalent : 0.001, 
  CrudeOil.tonneOfOilEquivalent : 0.1363636, 
  };