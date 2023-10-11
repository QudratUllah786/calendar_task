import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/images/images_class.dart';


class AppBarWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
   AppBarWidget({Key? key,required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(4.0),
        child: Container(
          color: Color(0xffF1F3F7CC),
          height: 1.0,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 60,
      leading: InkWell(
          onTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
          child: SvgPicture.asset(ImagesClass.menuIcon, fit: BoxFit.scaleDown)),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(ImagesClass.searchIcon, fit: BoxFit.scaleDown),
              SizedBox(
                width: 20.w,
              ),
              SvgPicture.asset(ImagesClass.settingIcon, fit: BoxFit.scaleDown),
              SizedBox(
                width: 20.w,
              ),
              SvgPicture.asset(ImagesClass.notificationIcon,
                  fit: BoxFit.scaleDown),
              SizedBox(
                width: 20.w,
              ),
              Container(
                width: 1,
                height: 30,
                decoration: const BoxDecoration(color: Color(0xffE3E5E8)),
              ),
              SizedBox(
                width: 20.w,
              ),
              CircleAvatar(),
            ],
          ),
        )
      ],
    );
  }
}
