import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task/controller/home_screen_controller.dart';
class TableCalendarWidget extends StatelessWidget {

   const TableCalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 30,
              spreadRadius: -18,
            )
          ],
          //    color: Colors.grey,
          borderRadius: BorderRadius.circular(20)),
      child: GetBuilder<HomeScreenController>(builder: (context) {
        final HomeScreenController homeScreenController = Get.find<HomeScreenController>();
        return TableCalendar(
          headerStyle: const HeaderStyle(
              formatButtonVisible: false, titleCentered: true),
          daysOfWeekVisible: true,
          focusedDay: homeScreenController.focusedDay,
          firstDay: homeScreenController.firstDay,
          lastDay: homeScreenController.lastDay,
          rangeStartDay: homeScreenController.focusedDay,
          rangeEndDay: homeScreenController.rangeEnd,
          onRangeSelected: homeScreenController.onRangeSelected,
          rangeSelectionMode: RangeSelectionMode.toggledOn,
          enabledDayPredicate: (day) {
            /// means disable all the days jin kay bad focused day a rha
            return
              day.isAfter(homeScreenController.focusedDay ) &&
                day.isBefore(homeScreenController.focusedDay.add(const Duration(days: 30)));
          },

        );
      }),
    );
  }
}
