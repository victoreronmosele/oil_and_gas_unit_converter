enum SectionModulus { cubicCentimeter, cubicInch }

Map<SectionModulus, String> sectionModulusValuesMap = {
  SectionModulus.cubicCentimeter: 'Cubic Centimeter(cm3)',
  SectionModulus.cubicInch: 'Cubic Inch(in3)',
};

Map<SectionModulus, num> sectionModulusFactorMap = {
  SectionModulus.cubicCentimeter: 1,
  SectionModulus.cubicInch: 0.061024,
};
