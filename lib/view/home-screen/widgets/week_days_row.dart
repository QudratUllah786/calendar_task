import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/controller/home_screen_controller.dart';
class WeekDaysRowWidget extends GetView<HomeScreenController> {
   const WeekDaysRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
              ()=> Container(
            padding: const EdgeInsets.all(2),
            height: 50.h,
            width: MediaQuery.of(context).size.width*0.75.w,
            decoration: BoxDecoration(
              color: const Color(0xffE8EAED),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                /// decoration

                InkWell(
                  onTap: (){
                    controller.onTapFirst.value = true;
                    controller.onTapSecond.value = false;
                    controller.onTapThird.value = false;
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    alignment: Alignment.center,
                    height: 48,
                    decoration: controller.onTapFirst.value == true? BoxDecoration(
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
                    child: const Text('Month'),
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
                    controller.onTapFirst.value = false;
                    controller.onTapSecond.value = true;
                    controller.onTapThird.value = false;
                  },
                  child: Container(width: MediaQuery.of(context).size.width*0.2,
                    alignment: Alignment.center,
                    height: 48,
                    decoration:controller.onTapSecond.value == true? BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5
                          )
                        ]
                    ):const BoxDecoration(),child: const Text('Week'),
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
                    controller.onTapFirst.value = false;
                    controller.onTapSecond.value = false;
                    controller.onTapThird.value = true;
                  },
                  child: Container(width: MediaQuery.of(context).size.width*0.2,
                    alignment: Alignment.center,
                    height: 48,
                    decoration: controller.onTapThird.value == true? BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5
                          )
                        ]
                    ):const BoxDecoration(),child: const Text('Day'),
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
