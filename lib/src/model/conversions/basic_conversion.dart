import 'package:oil_and_gas_unit_converter/src/data/conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/conversions/basic_conversions.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/decimal_number_prefix.dart';
import 'package:oil_and_gas_unit_converter/src/data/units/basic_units/density.dart';
import 'package:oil_and_gas_unit_converter/src/model/conversion.dart';
import 'package:oil_and_gas_unit_converter/src/model/unit.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/acceleration.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/angle.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/area.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/cost_rate.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/decimal_number_prefix.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/density.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/distributed_force.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/energy.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/flowrate_mass.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/flowrate_volume.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/frequency.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/length.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/momentum.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/pressure.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/time.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/torque.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/volume.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/weight.dart';
import 'package:oil_and_gas_unit_converter/src/model/units/basic_units/weight_per_unit_length.dart';

class BasicConversionType extends Conversion {
  //TODO Remove this if no use case
  Map conversionStringValueMap = conversionsValuesMap;

  List conversionUnitTypes = BasicConversions.values;
  Unit getUnit<BasicConversions>(BasicConversions basicConversion) =>
      conversionUnitObjectMap[basicConversion];

  Map<dynamic, Unit> conversionUnitObjectMap = {
    BasicConversions.acceleration: AccelerationUnit(),
    BasicConversions.angle: AngleUnit(),
    BasicConversions.area: AreaUnit(),
    BasicConversions.costRate: CostRateUnit(),
    BasicConversions.decimalNumberPrefix: DecimalNumberPrefixUnit(),
    BasicConversions.density: DensityUnit(),
    BasicConversions.distributedForces: DistributedForceUnit(),
    BasicConversions.energy: EnergyUnit(),
    BasicConversions.flowrateMass: FlowrateMassUnit(),
    BasicConversions.flowrateVolume: FlowrateVolumeUnit(),
    BasicConversions.frequency: FrequencyUnit(),
    BasicConversions.length: LengthUnit(),
    BasicConversions.momentum: MomentumUnit(),
    BasicConversions.pressure: PressureUnit(),
    BasicConversions.time: TimeUnit(),
    BasicConversions.torque: TorqueUnit(),
    BasicConversions.volume: VolumeBasicUnit(),
    BasicConversions.weight: WeightUnit(),
    BasicConversions.weightPerUnitLength: WeightPerUnitLengthUnit(),
  };
}
