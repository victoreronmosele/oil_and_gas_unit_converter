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
