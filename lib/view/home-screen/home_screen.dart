import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/controller/home_screen_controller.dart';
import 'package:task/view/home-screen/widgets/appbar_widget.dart';
import 'package:task/view/home-screen/widgets/drawer_widget.dart';
import 'package:task/view/home-screen/widgets/table_calendar_widget.dart';
import 'package:task/view/home-screen/widgets/time_table_widget.dart';
import 'package:task/view/home-screen/widgets/week_days_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  late HomeScreenController _homeScreenController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
@override
  void initState() {
  _homeScreenController =  Get.find<HomeScreenController>();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      /// DrawerWidget custom widget
      drawer: const DrawerWidget(),

      /// AppBarWidget custom widget
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBarWidget(scaffoldKey: _scaffoldKey),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Calendar',
                style: GoogleFonts.nunito(
                    color: const Color(0xff1A1926),
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 20.h,
            ),

            /// buttons row custom widget
            const WeekDaysRowWidget(),
            SizedBox(
              height: 20.h,
            ),

            ///   calendar custom widget
          const TableCalendarWidget(),
            const SizedBox(
              height: 10,
            ),

            /// Text to show range
            GetBuilder<HomeScreenController>(
              builder: (context) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Range:',style: GoogleFonts.nunito(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700
                    ),),
                    Text(_homeScreenController.rangeEnd?.toString()
                        ?? ' Please select range on calendar',
                      style: GoogleFonts.nunito(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal
                    ),)
                  ],
                );
              }
            ),
            Text('Upcoming',
                style: GoogleFonts.nunito(
                    color: const Color(0xff1A1926),
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700)),
            /// TimeTableWidget custom widget
            Expanded(
              child: ListView(
                children: const [
                  TimeTableWidget(
                    time1: '07:00',
                    time2: "07:30",
                    time3: '08:00',
                    heading: 'Soccer Practice',
                    subtitle: 'Design',
                    barColor: Colors.orange,
                    time: '07:00',
                  ),
                  TimeTableWidget(
                    time1: '08:30',
                    time2: "09:00",
                    time3: '09:30',
                    heading: 'Grocery Shopping',
                    subtitle: 'Coding',
                    barColor: Colors.green,
                    time: '08:30',
                  ),
                  TimeTableWidget(
                    time1: '08:30',
                    time2: "09:00",
                    time3: '09:30',
                    heading: 'Dentist Appt',
                    subtitle: 'Meeting',
                    barColor: Colors.purple,
                    time: '08:30',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
