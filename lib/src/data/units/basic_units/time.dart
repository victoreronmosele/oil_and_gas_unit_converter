enum Time { day, decade, hour, minute, second, year }

Map<Time, String> timeValuesMap = {
  Time.day: 'Day(day)',
  Time.decade: 'Decade(decade)',
  Time.hour: ' Hour(hr)',
  Time.minute: 'Minute(min)',
  Time.second: 'Second(sec)',
  Time.year: 'Year(yr)',
};

Map<Time, num> timeFactorMap = {
  Time.day : 1, 
  Time.decade : 0.000274, 
  Time.hour : 24, 
  Time.minute : 1440, 
  Time.second : 86400, 
  Time.year : 0.0027397, 
  };
