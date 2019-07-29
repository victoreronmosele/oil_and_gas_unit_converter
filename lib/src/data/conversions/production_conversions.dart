enum ProductionConversions {
  nozzleSize,
  nozzleSpeed,
  oilProductionIndex,
  permeablity,
  pipeCapacity,
  productionRate,
  rotation,
  sectionModulus,
  sectionModulusMomentOfSection,
  stressElasticModulus,
  strokeRate,
  strokeVolume
}

Map<ProductionConversions, String> productionConversionsValuesMap = {
  ProductionConversions.nozzleSize: 'Nozzle Size',
  ProductionConversions.nozzleSpeed: 'Nozzle Speed',
  ProductionConversions.oilProductionIndex: 'Oil Production Index',
  ProductionConversions.permeablity: 'Permeablity',
  ProductionConversions.pipeCapacity: 'Pipe Capacity',
  ProductionConversions.productionRate: 'Production Rate',
  ProductionConversions.rotation: 'Rotation',
  ProductionConversions.sectionModulus: 'Section Modulus',
  ProductionConversions.stressElasticModulus: 'Stress Elastic Modulus',
  ProductionConversions.sectionModulusMomentOfSection:
      'Section Modulus - Moment of Section',
  ProductionConversions.strokeRate: 'Stroke Rate',
  ProductionConversions.strokeVolume: 'Stroke Volume'
};