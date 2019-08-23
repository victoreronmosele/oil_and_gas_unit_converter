import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/gas_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/gas_units/gas_injection_rate.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/gas_units/gas_production_index.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/gas_units/gas_production_rate.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/gas_units/gas_volume.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/gas_units/liquefied_natural_gas.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/gas_units/specific_volume.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/gas_units/volume.dart';

class GasConversionType extends Conversion {
  Map conversionStringValueMap = conversionsValuesMap;

  List conversionUnitTypes = GasConversions.values;
  Unit getUnit<GasConversions>(GasConversions gasConversion) =>
      conversionUnitObjectMap[gasConversion];

  Map<dynamic, Unit> conversionUnitObjectMap = {
    GasConversions.gasInjectionRate: GasInjectionRateUnit(),
    GasConversions.gasProductionIndex: GasProductionIndexUnit(),
    GasConversions.gasProductionRate: GasProductionRateUnit(),
    GasConversions.gasVolume: GasVolumeUnit(),
    GasConversions.liquefiedNaturalGas: LiquefiedNaturalGasUnit(),
    GasConversions.specificVolume: SpecificVolumeUnit(),
    GasConversions.volume: VolumeGasUnit(),
  };
}
