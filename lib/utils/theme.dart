import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

//COLOR
const Color lightPurple = Color.fromARGB(255, 185, 199, 255);
Color deepGrey = Colors.grey.shade900;
const Color greenColor = Color(0xff43A047);
const Color redColor = Color(0xffE53935);
const Color dividerColor = Color(0xffADADAD);
Color greyColor = Color(0xffadadad);
Color bgColor = Color(0xffFEFEFE);
Color blackColor = Color(0xff252525);

// size
double edge = 2.h;

//regular text style
TextStyle extraSmallTextStyle =
    GoogleFonts.lato(color: blackColor, fontSize: 8.sp);
TextStyle smallTextStyle = GoogleFonts.lato(color: blackColor, fontSize: 10.sp);
TextStyle mediumTextStyle =
    GoogleFonts.lato(color: blackColor, fontSize: 12.sp);
TextStyle boldTextStyle = GoogleFonts.lato(
    color: blackColor, fontSize: 12.sp, fontWeight: FontWeight.bold);
TextStyle extraBoldTextStyle = GoogleFonts.lato(
    color: blackColor, fontSize: 12.sp, fontWeight: FontWeight.w800);
