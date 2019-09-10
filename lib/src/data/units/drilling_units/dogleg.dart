enum Dogleg { degPer100ft, degPer30m }

Map<Dogleg, String> doglegValuesMap = {
  Dogleg.degPer100ft: 'deg/100ft(deg/100ft)',
  Dogleg.degPer30m: 'deg/30m(deg/30m)',
};

Map<Dogleg, num> doglegFactorMap = {
  Dogleg.degPer100ft: 1,
  Dogleg.degPer30m: 0.9843004,
};
