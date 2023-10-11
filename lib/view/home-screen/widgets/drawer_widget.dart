import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'drawer_items.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      width: MediaQuery.of(context).size.width*0.7,

      child: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child: ListView(
          children: [
            drawerItems(txt: 'Dashboard', icon: Icon(Icons.dashboard)),
            drawerItems(txt: 'Calender', icon: Icon(Icons.calendar_month_outlined)),
            drawerItems(txt: 'Mail', icon: Icon(Icons.mail_outline)),
            drawerItems(txt: 'Chat', icon: Icon(CupertinoIcons.chat_bubble)),
            drawerItems(txt: 'Task', icon: Icon(Icons.task_alt)),
            drawerItems(txt: 'Projects', icon: Icon(CupertinoIcons.bag_badge_minus)),
            drawerItems(txt: 'File Manager', icon: Icon(Icons.file_copy_outlined)),
            drawerItems(txt: 'Notes', icon: Icon(Icons.note)),
            drawerItems(txt: 'Contacts', icon: Icon(Icons.contact_page)),
            SizedBox(height: 20.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Calenders',style: GoogleFonts.nunito(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),),
                Icon(Icons.add),
              ],
            ),
            SizedBox(height: 10,),
            calenders(
              color: Colors.orange,
              txt: 'Important'
            ),
            calenders(
                color: Colors.orange,
                txt: 'Meeting'
            ),       calenders(
                color: Colors.purple,
                txt: 'Event'
            ),       calenders(
                color: Colors.green,
                txt: 'Work'
            ),       calenders(
                color: Colors.grey,
                txt: 'Other'
            ),
          ],
        ),
      ),
    );
  }
}
Widget calenders({required Color color,required String txt}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color
          ),
        ),
        const SizedBox(width: 10,),
        Text(txt,style: GoogleFonts.nunito(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        ),)
      ],
    ),
  );
}