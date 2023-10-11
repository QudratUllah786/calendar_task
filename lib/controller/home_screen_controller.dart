import 'dart:developer';

import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  var onTapFirst = true.obs;
  var onTapSecond = false.obs;
  var onTapThird = false.obs;

  DateTime focusedDay = DateTime.now();
  DateTime focusDay = DateTime.now();
  DateTime firstDay = DateTime.utc(1990, 01, 01);
  DateTime lastDay = DateTime.utc(2050, 01, 01);

  DateTime? _rangeEnd;

  DateTime? get rangeEnd => _rangeEnd;

  ///

  void onRangeSelected(DateTime? start, DateTime? end, DateTime? focusDay) {
    focusedDay = DateTime.now();
    _rangeEnd = focusDay;
    update();
    log('range:${rangeEnd?.toString()}');
  }
}
