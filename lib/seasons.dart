library seasons;

import 'dart:math';

String season(DateTime date) {
  final year = date.year;

  final spring = DateTime(year, 3, (year % 4 == 0) ? 19 : 20);
  final summer = DateTime(year, 6, (year % 4 == 0) ? 20 : 21);
  final fall = DateTime(year, 9, (year % 4 == 0) ? 22 : 23);
  final winter = DateTime(year, 12, (year % 4 == 0) ? 20 : 21);

  if ((date.isAfter(spring) || date == spring) && date.isBefore(summer)) {
    return 'Spring';
  } else if ((date.isAfter(summer) || date == summer) && date.isBefore(fall)) {
    return 'Summer';
  } else if ((date.isAfter(fall) || date == fall) && date.isBefore(winter)) {
    return 'Fall';
  } else {
    return 'Winter';
  }
}
