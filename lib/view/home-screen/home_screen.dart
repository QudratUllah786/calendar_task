import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task/controller/home_screen_controller.dart';
import 'package:task/view/widgets/appbar_widget.dart';
import 'package:task/view/widgets/drawer_widget.dart';
import '../widgets/time-table/time_table_widget.dart';
import '../widgets/week_days_row.dart';
class HomeScreen extends StatefulWidget {


   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  DateTime focusedDay = DateTime.now();
  DateTime focusDay = DateTime.now();

  DateTime firstDay = DateTime.utc(1990,01,01);

  DateTime lastDay = DateTime.utc(2050,01,01);


  DateTime? _rangeEnd;

  void onRangeSelected(DateTime? start, DateTime? end,DateTime? focusDay){
  setState(() {
   // focusedDay = focusDay!;
    _rangeEnd = end;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_scaffoldKey,
      drawer:const DrawerWidget(),
      appBar: PreferredSize(preferredSize:  const Size.fromHeight(70), child: AppBarWidget(scaffoldKey: _scaffoldKey),),
      body: Container(
        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Calendar',style: GoogleFonts.nunito(
                color: const Color(0xff1A1926),fontSize: 28.sp,
                fontWeight: FontWeight.w700
            )),

            SizedBox(height: 20.h,),

            /// buttons row

          //  WeekDaysRowWidget(),

          //   SizedBox(height: 20.h,),


            ///     CALENDER

            Container(
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
                borderRadius: BorderRadius.circular(20)
              ),
              child: TableCalendar(
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true
                ),
           // shouldFillViewport: true,
                daysOfWeekVisible: true,
                  focusedDay: focusedDay,
                  firstDay: firstDay ,
                  lastDay:lastDay,
                rangeStartDay: focusedDay,
                rangeEndDay: _rangeEnd,
                onRangeSelected: onRangeSelected,
                rangeSelectionMode: RangeSelectionMode.toggledOn,


              ),
            ),
            const SizedBox(height: 20,),

         //
         //    Text('Upcoming',style: GoogleFonts.nunito(
         //        color: const Color(0xff1A1926),fontSize: 28.sp,
         //        fontWeight: FontWeight.w700
         //    )),
         //
         // /// Upcoming Events
         //
         // Expanded(
         //   child:  ListView(
         //     children: const [
         //       TimeTableWidget(
         //         time1: '07:00',
         //         time2: "07:30",
         //         time3: '08:00',
         //         heading: 'Soccer Practice',
         //         subtitle: 'Design',
         //         barColor: Colors.orange,
         //         time: '07:00',
         //       ),
         //       TimeTableWidget(
         //         time1: '08:30',
         //         time2: "09:00",
         //         time3: '09:30',
         //         heading: 'Grocery Shopping',
         //         subtitle: 'Coding',
         //         barColor: Colors.green,
         //         time: '08:30',
         //       ),
         //       TimeTableWidget(
         //         time1: '08:30',
         //         time2: "09:00",
         //         time3: '09:30',
         //         heading: 'Dentist Appt',
         //         subtitle: 'Meeting',
         //         barColor: Colors.purple,
         //         time: '08:30',
         //       ),
         //     ],
         //   ),
         // )
          ],
        ),
      ),
    );

  }
}

