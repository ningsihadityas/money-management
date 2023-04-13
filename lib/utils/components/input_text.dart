import 'package:flutter/material.dart';
import 'package:money_management_app/utils/theme.dart';
import 'package:sizer/sizer.dart';

class InputTextWidget extends StatelessWidget {
  String text;
  Icon? prefixIcon;
  IconButton? suffixIcon;
  int? maxLines;

  TextInputType? type;
  InputTextWidget(
      {required this.text,
      this.prefixIcon,
      this.suffixIcon,
      this.maxLines,
      this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.sp),
      decoration: BoxDecoration(
          color: blackColor,
          borderRadius: BorderRadius.circular(8.sp),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(0, 0.5), blurRadius: 1)
          ]),
      child: TextField(
        keyboardType: type ?? TextInputType.text,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
            hintText: text,
            hintStyle:
                mediumTextStyle.copyWith(fontSize: 11.sp, color: Colors.white),
            prefixIcon: prefixIcon ?? null,
            suffixIcon: suffixIcon ?? null,
            border: InputBorder.none),
        style: mediumTextStyle.copyWith(fontSize: 11.sp, color: Colors.white),
      ),
    );
  }
}
