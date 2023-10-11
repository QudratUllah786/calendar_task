import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget drawerItems({required String txt, required Icon icon}) {
  return ListTile(
    leading: Icon(icon.icon),
    title: Text(txt, style: GoogleFonts.nunito(

    ),),
  );
}