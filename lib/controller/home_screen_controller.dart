import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  var onTapFirst = true.obs;
  var onTapSecond = false.obs;
  var onTapThird = false.obs;


  Rx<DateTime> focusedDay = DateTime.now().obs;
  Rx<DateTime> focusDay = DateTime.now().obs;

  Rx<DateTime> firstDay = DateTime.utc(1990,01,01).obs;

  Rx<DateTime> lastDay = DateTime.utc(2050,01,01).obs;


  Rx<DateTime>? _rangeEnd;
   Rx<DateTime>? get rangeEnd => _rangeEnd;

  void onRangeSelected(DateTime? start, DateTime? end,DateTime? focusDay){

      // focusedDay = focusDay!;
      _rangeEnd?.value = end!;
  }

}