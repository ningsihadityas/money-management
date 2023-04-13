import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management_app/utils/components/button_widget.dart';
import 'package:money_management_app/utils/components/input_text.dart';
import 'package:money_management_app/utils/theme.dart';
import 'package:sizer/sizer.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  _showWidget(text, onTap) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h, vertical: 2.h),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              height: 4.h,
              width: 4.h,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: greyColor),
            ),
            SizedBox(
              width: 2.h,
            ),
            Text(
              text,
              style: mediumTextStyle,
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20.sp,
              color: blackColor,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: bgColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20.sp,
            color: blackColor,
          ),
        ),
        automaticallyImplyLeading: false,
        title: Text(
          'Add Transactoin',
          style: boldTextStyle.copyWith(fontSize: 16.sp),
        ),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 3.h),
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              InputTextWidget(
                text: 'Type Amount',
                type: TextInputType.number,
              ),
              SizedBox(
                height: 2.h,
              ),
              InputTextWidget(
                text: 'Note',
                maxLines: 4,
              ),
              SizedBox(
                height: 2.h,
              ),
              _showWidget('Select Category', () {}),
              _showWidget('Thursday, 06 April 2023', () {}),
              SizedBox(
                height: 35.h,
              ),
              ButtonWidget('Save', () {})
            ],
          )),
    );
  }
}
