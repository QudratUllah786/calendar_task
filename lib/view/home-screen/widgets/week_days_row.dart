import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:task/controller/home_screen_controller.dart';
class WeekDaysRowWidget extends StatelessWidget {
  HomeScreenController homeScreenController = Get.find<HomeScreenController>();
   WeekDaysRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
              ()=> Container(
            padding: EdgeInsets.all(2),
            height: 50.h,
            width: MediaQuery.of(context).size.width*0.75.w,
            decoration: BoxDecoration(
              color: Color(0xffE8EAED),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                /// decoration

                InkWell(
                  onTap: (){
                    homeScreenController.onTapFirst.value = true;
                    homeScreenController.onTapSecond.value = false;
                    homeScreenController.onTapThird.value = false;
                  },
                  child: Container(
                    child: const Text('Month'),
                    width: MediaQuery.of(context).size.width*0.2,
                    alignment: Alignment.center,
                    height: 48,
                    decoration: homeScreenController.onTapFirst.value == true? BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5
                          )
                        ]
                    ):const BoxDecoration(),
                  ),
                ),
                Container(
                  width: 1,
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Colors.grey
                  ),
                ),

                /// decoration

                InkWell(
                  onTap: (){
                    homeScreenController.onTapFirst.value = false;
                    homeScreenController.onTapSecond.value = true;
                    homeScreenController.onTapThird.value = false;
                  },
                  child: Container(width: MediaQuery.of(context).size.width*0.2,
                    alignment: Alignment.center,
                    height: 48,
                    decoration:homeScreenController.onTapSecond.value == true? BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5
                          )
                        ]
                    ):BoxDecoration(),child: const Text('Week'),
                  ),
                ),

                Container(
                  width: 1,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey
                  ),
                ),

                /// decoration

                InkWell(

                  onTap: (){
                    homeScreenController.onTapFirst.value = false;
                    homeScreenController.onTapSecond.value = false;
                    homeScreenController.onTapThird.value = true;
                  },
                  child: Container(child: Text('Day'),

                    width: MediaQuery.of(context).size.width*0.2,
                    alignment: Alignment.center,
                    height: 48,
                    decoration: homeScreenController.onTapThird.value == true? BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5
                          )
                        ]
                    ):const BoxDecoration(),
                  ),
                ),
              ],
            ),
          ),
        ),

        ///`

        Container(
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
