enum SectionModulusMomentOfSection {
  centimeterToThePower4,
  footToThePower4,
  inchToThePower4,
  meterToPower4
}

Map<SectionModulusMomentOfSection, String>
    sectionModulusMomentOfSectionValuesMap = {
  SectionModulusMomentOfSection.centimeterToThePower4:
      'Centimeter to the power 4(cm4)',
  SectionModulusMomentOfSection.footToThePower4: 'Foot to the power 4(ft4)',
  SectionModulusMomentOfSection.inchToThePower4: 'Inch to the power 4(in4)',
  SectionModulusMomentOfSection.meterToPower4: 'Meter to Power 4(m4)',
};

Map<SectionModulusMomentOfSection, num> sectionModulusMomentOfSectionFactorMap =
    {
  SectionModulusMomentOfSection.centimeterToThePower4: 1,
  SectionModulusMomentOfSection.footToThePower4: 0.0000012,
  SectionModulusMomentOfSection.inchToThePower4: 0.0240251,
  SectionModulusMomentOfSection.meterToPower4: 0,
};
