import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management_app/utils/theme.dart';
import 'package:sizer/sizer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  _categoryListCard() {
    return Container(
      margin: EdgeInsets.all(6.sp),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(1.h),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.purple[400]),
            child: Icon(
              Icons.fastfood_outlined,
              color: Colors.white,
              size: 14.sp,
            ),
          ),
          SizedBox(
            width: 1.h,
          ),
          Text(
            'Food',
            style: mediumTextStyle.copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: bgColor,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: blackColor,
                size: 20.sp,
              )),
          title: Text(
            'Select Category',
            style: boldTextStyle.copyWith(fontSize: 16.sp),
          ),
          actions: [
            IconButton(
                padding: EdgeInsets.only(right: 4.h),
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  color: blackColor,
                  size: 25.sp,
                )),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: Container(
              height: 6.h,
              padding: EdgeInsets.symmetric(
                horizontal: 2.5.h,
                vertical: 0.5.h,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.sp,
                  ),
                  color: Colors.grey[200],
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.sp,
                    ),
                    color: blackColor,
                  ),
                  tabs: const [
                    Tab(
                      text: 'Income',
                    ),
                    Tab(
                      text: 'Expense',
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
                child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.h),
              children: [
                _categoryListCard(),
                _categoryListCard(),
                _categoryListCard(),
                _categoryListCard(),
                _categoryListCard(),
                _categoryListCard()
              ],
            )),
            Container(
                child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.h),
              children: [
                _categoryListCard(),
                _categoryListCard(),
                _categoryListCard(),
                _categoryListCard(),
                _categoryListCard(),
                _categoryListCard()
              ],
            )),
          ],
        ),
      ),
    );
  }
}
