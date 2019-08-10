enum Weight {
  carat,
  centigram,
  decigram,
  dram,
  grain,
  gram,
  kilogram,
  kip,
  longTon,
  metricTon,
  milligram,
  ounce,
  pound,
  slug,
  ton,
  tonne,
  troyOunce
}

Map<Weight, String> weightValuesMap = {
  Weight.carat: 'Carat(ct)',
  Weight.centigram: 'Centigram(cg)',
  Weight.decigram: 'Decigram(dg)',
  Weight.dram: 'Dram(dram)',
  Weight.grain: 'Grain(gr)',
  Weight.gram: 'Gram(g)',
  Weight.kilogram: 'Kilogram(kg)',
  Weight.kip: 'Kip(kip)',
  Weight.longTon: 'Long Ton(lt)',
  Weight.metricTon: 'Metric Ton(mt)',
  Weight.milligram: 'Milligram(mg)',
  Weight.ounce: 'Ounce(oz)',
  Weight.pound: 'Pound(lb)',
  Weight.slug: 'Slug(slug)',
  Weight.ton: 'Ton(ton)',
  Weight.tonne: 'Tonne(mt)',
  Weight.troyOunce: 'Troy Ounce(toz)',
};