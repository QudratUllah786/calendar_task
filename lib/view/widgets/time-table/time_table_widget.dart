import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class TimeTableWidget extends StatelessWidget {
  final String heading;
  final String subtitle;
  final String time;
  final String time1;
  final String time2;
  final String time3;
  final Color barColor;

  const TimeTableWidget(
      {Key? key,
      required this.time,
      required this.heading,
      required this.subtitle,
      required this.time1,
      required this.time2,
        required this.barColor,
      required this.time3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(time1),
              Text(time2),
              Text(time3),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.7,
            height: MediaQuery.of(context).size.height*0.15,
            decoration:DottedDecoration(
                color: Colors.black,
                shape: Shape.line,
                linePosition: LinePosition.top

            ),
            child: Container(
              width: MediaQuery.of(context).size.width*0.7,
              height: MediaQuery.of(context).size.height*0.15,
              decoration:DottedDecoration(
                  color: Colors.black,
                  shape: Shape.line,
                  linePosition: LinePosition.bottom

              ),
              child: Container(
                padding: EdgeInsets.all(12),
                // alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.7,
                height: MediaQuery.of(context).size.height*0.13,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: -16,
                        blurRadius: 30,

                      )
                    ]
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 2,
                      height: 84,
                      decoration: BoxDecoration(
                          color: barColor
                      ),
                    ),
                    SizedBox(width: 10,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(heading,style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),),
                        SizedBox(height: 8.h),
                        Row(
                          children: [Text(subtitle),
                            SizedBox(width: 8.w,),
                            Icon(Icons.watch_later,size: 14,),
                            Text(time)
                          ],
                        ),
                        SizedBox(height: 18.h,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                            ),
                            SizedBox(width: 2.w,),
                            CircleAvatar(
                              radius: 15,
                            ),
                            SizedBox(width: 2.w,),
                            CircleAvatar(
                              radius: 15,
                            ),
                            SizedBox(width: 2.w,),
                            CircleAvatar(
                              radius: 15,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )

        ],
      ),);
  }
}
