import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:money_management_app/views/homepage.dart';

import '../utils/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => {
      
      Get.to(const HomePage())
      
      });
    super.initState();
  }

  // _checkAuth() async {
  //   //check is logged in
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   var token = _prefs.getString("token");

  //   if (token == null) {
  //     Get.offAll(LoginPage());
  //   } else {
  //     Get.offAll(HomePage());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: RichText(
          text: TextSpan(
              text: 'Money',
              style: mediumTextStyle.copyWith(fontSize: 14.sp),
              children: [
                TextSpan(
                    text: 'Management',
                    style: extraBoldTextStyle.copyWith(
                        color: deepGrey, fontSize: 14.sp))
              ]),
        ),
      ),
    );
  }
}
