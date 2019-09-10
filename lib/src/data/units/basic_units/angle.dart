enum Angle { degree, grad, mil, minute, point, radian, second }

Map<Angle, String> angleValuesMap = {
  Angle.degree: 'Degree(deg)',
  Angle.grad: 'Grad(grad)',
  Angle.mil: 'Mil(mil)',
  Angle.minute: 'Minute(min)',
  Angle.point: 'Point(pt)',
  Angle.radian: 'Radian(rad)',
  Angle.second: 'Second'
};

Map<Angle, num> angleFactorMap = {
  Angle.degree: 1,
  Angle.grad: 1.1111111,
  Angle.mil: 17.7777778,
  Angle.minute: 60,
  Angle.point: 0.0888889,
  Angle.radian: 0.0174533,
  Angle.second: 3600
};
