import 'package:oil_and_gas_unit_converter/src/data/conversions/production_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/production_units/nozzle_size.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/production_units/nozzle_speed.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/production_units/oil_production_index.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/production_units/permeability.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/production_units/pipe_capacity.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/production_units/production_rate.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/production_units/rotation.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/production_units/section_modulus.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/production_units/section_modulus_moment_of_section.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/production_units/stress_elastic_modulus.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/production_units/stroke_rate.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/production_units/stroke_volume.dart';

class ProductionConversionType extends Conversion {
  Map conversionStringValueMap = productionConversionsValuesMap;

  List conversionUnitTypes = ProductionConversions.values;
  Unit getUnit<ProductionConversions>(
          ProductionConversions productionConversion) =>
      conversionUnitObjectMap[productionConversion];

  Map<dynamic, Unit> conversionUnitObjectMap = {
    ProductionConversions.nozzleSize: NozzleSizeUnit(),
    ProductionConversions.nozzleSpeed: NozzleSpeedUnit(),
    ProductionConversions.oilProductionIndex: OilProductionIndexUnit(),
    ProductionConversions.permeablity: PermeabilityUnit(),
    ProductionConversions.pipeCapacity: PipeCapacityUnit(),
    ProductionConversions.productionRate: ProductionRateUnit(),
    ProductionConversions.rotation: RotationUnit(),
    ProductionConversions.sectionModulus: SectionModulusUnit(),
    ProductionConversions.sectionModulusMomentOfSection:
        SectionModulusMomentOfSectionUnit(),
    ProductionConversions.stressElasticModulus: StressElasticModulusUnit(),
    ProductionConversions.strokeRate: StrokeRateUnit(),
    ProductionConversions.strokeVolume: StrokeVolumeUnit(),
  };
}
