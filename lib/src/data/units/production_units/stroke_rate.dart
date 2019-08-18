enum StrokeRate { strokePerHour, strokePerMinute }

Map<StrokeRate, String> strokeRateValuesMap = {
  StrokeRate.strokePerHour: 'Stroke per Hour(stk/hr)',
  StrokeRate.strokePerMinute: 'Stroke per Minute(stk/min)',
};

Map<StrokeRate, num> strokeRateFactorMap = {
  StrokeRate.strokePerHour: 1,
  StrokeRate.strokePerMinute: 0.016667,
};
