import 'package:snowrun_app/domain/body_spec/model/foot_size.dart';
import 'package:snowrun_app/domain/body_spec/model/height.dart';
import 'package:snowrun_app/domain/body_spec/model/weight.dart';
import 'package:snowrun_app/presentation/core/constants.dart';
import 'package:snowrun_app/utils/text_utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:units_converter/units_converter.dart';

/// HEIGHT
String convertHeightToString(Height? height) {
  if (height?.range == null) {
    return '';
  }

  if (height?.unit == HeightUnit.cm) {
    return "${_convertCmToFeet(height?.range?.start.getOrCrash() ?? 0)} ~ ${_convertCmToFeet(height?.range?.end.getOrCrash() ?? 0)}";
  } else {
    return "${_convertFeetToCm(height?.range?.start.getOrCrash() ?? 0)} ~ ${_convertFeetToCm(height?.range?.end.getOrCrash() ?? 0)}";
  }
}

String _convertCmToFeet(double cm) {
  var length = Length()..convert(LENGTH.centimeters, cm);
  double feet = length.feet.value!;
  return "${feet.toStringAsFixed(1)} ${HeightUnit.ft.name.tr()}";
}

// feet를 cm로 변환
String _convertFeetToCm(double feet) {
  var length = Length()..convert(LENGTH.feet, feet);
  double cm = length.centimeters.value!;
  return "${cm.toStringAsFixed(1)} ${HeightUnit.cm.name.tr()}";
}

/// WEIGHT
String convertWeightToString(Weight? weight) {
  if (weight?.range == null) {
    return '';
  }

  if (weight?.unit == WeightUnit.kg) {
    return "${_convertKgToLb(weight?.range?.start.getOrCrash() ?? 0)} ~ ${_convertKgToLb(weight?.range?.end.getOrCrash() ?? 0)}";
  } else {
    return "${_convertLbToKg(weight?.range?.start.getOrCrash() ?? 0)} ~ ${_convertLbToKg(weight?.range?.end.getOrCrash() ?? 0)}";
  }
}

String _convertKgToLb(double kg) {
  var mass = Mass()..convert(MASS.kilograms, kg);
  double lbs = mass.pounds.value!;
  return "${lbs.toStringAsFixed(1)} ${WeightUnit.lb.name.tr()}"; // 소수점 첫째 자리까지 표시
}

// lb를 kg로 변환
String _convertLbToKg(double lbs) {
  var mass = Mass()..convert(MASS.pounds, lbs);
  double kg = mass.kilograms.value!;
  return "${kg.toStringAsFixed(1)} ${WeightUnit.kg.name.tr()}"; // 소수점 첫째 자리까지 표시
}

/// SHOE SIZE
String convertFootSizeToString(FootSize? footSize, List<FootSizeUnit> units) {
  if (footSize?.value == null) {
    return '';
  }

  final value = (footSize?.value?.value.getOrCrash() ?? 0) *
      (footSize?.unit == FootSizeUnit.mm ? 0.1 : 1);
  final currentUnit = footSize?.unit;

  final results = units.where((unit) => unit != currentUnit).map((unit) {

    var shoeSizeConverter = ShoeSize()
      ..convert(_getShoeSizeUnit(currentUnit), value);
    double convertedValue =
        shoeSizeConverter.getUnit(_getShoeSizeUnit(unit)).value!;
    convertedValue *= (unit == FootSizeUnit.mm ? 10 : 1);
    final unitText =
        "${Constants.footSizeUnitPrefix}${capitalizeFirstLetter(unit.name)}"
            .tr();
    return '${convertedValue.toStringAsFixed(1)} $unitText';
  }).join('  |  ');
  return results;
}

SHOE_SIZE _getShoeSizeUnit(FootSizeUnit? unit) {
  switch (unit) {
    case FootSizeUnit.usM:
      return SHOE_SIZE.usaCanadaMan;
    case FootSizeUnit.usW:
      return SHOE_SIZE.usaCanadaWoman;
    case FootSizeUnit.usC:
      return SHOE_SIZE.usaCanadaChild;
    case FootSizeUnit.eu:
      return SHOE_SIZE.euChina;
    case FootSizeUnit.ukM:
      return SHOE_SIZE.ukIndiaMan;
    case FootSizeUnit.ukW:
      return SHOE_SIZE.ukIndiaWoman;
    case FootSizeUnit.ukC:
      return SHOE_SIZE.ukIndiaChild;
    case FootSizeUnit.mm:
      return SHOE_SIZE.centimeters;
    case FootSizeUnit.jp:
      return SHOE_SIZE.japan;
    default:
      throw Exception('');
  }
}
