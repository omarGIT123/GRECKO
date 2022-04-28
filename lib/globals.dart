library my_prj.globals;

import 'package:intl/intl.dart';

DateTime dateTitle = DateTime.now();
int currentDay = Current();
int Current() {
  int i = 0;
  while (DAY[i] != DateFormat('E').format(dateTitle).toString().toUpperCase()) {
    i++;
  }
  return i;
}

List<String> DAY = [
  'MON',
  'TUE',
  'WED',
  'THU',
  'FRI',
  'SAT',
  'SUN',
];
int blue = 0xFF05103A;
int Aries = 0xFFA5A6F6;

int colorText = 0xFFA5A6F6;
int colorBorder = 0xFFA5A6F6;
int colorBack = 0xFFFFFFFF;

int thisPage = currentDay;

int percentGround = 50;
int percentFirst = 20;
int percentSecond = 70;

//dart fix --apply
