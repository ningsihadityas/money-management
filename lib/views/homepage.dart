import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:money_management_app/utils/components/input_text.dart';
import 'package:money_management_app/views/transaction/add_transaction_page.dart';
import 'package:sizer/sizer.dart';
import 'package:money_management_app/utils/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double totalBudget = 300000;
  double usedBudget = 150000;

  transactionHistory() {
    return Container(
      margin: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.grey, offset: Offset(0.0, 1.0), blurRadius: 1)
      ]),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Row(
              children: [
                Text(
                  '20 Mar 2023',
                  style: mediumTextStyle.copyWith(color: deepGrey),
                ),
                Spacer(),
                Text(
                  'Rp. 450,000',
                  style: boldTextStyle.copyWith(color: deepGrey),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                Spacer(),
                Text(
                  '- Rp. 50.000',
                  style: mediumTextStyle.copyWith(
                      color: redColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(1.h),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                  child: Icon(
                    Icons.work,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
                SizedBox(
                  width: 1.h,
                ),
                Text(
                  'Business',
                  style: mediumTextStyle.copyWith(fontSize: 18),
                ),
                Spacer(),
                Text(
                  'Rp. 500.000',
                  style: mediumTextStyle.copyWith(
                      color: greenColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double _remainingBudget = usedBudget / totalBudget;
    return Scaffold(
      backgroundColor: bgColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddTransaction());
        },
        backgroundColor: deepGrey,
        child: Text(
          '+',
          style: boldTextStyle.copyWith(color: Colors.white, fontSize: 28.sp),
        ),
      ),
      appBar: AppBar(
        backgroundColor: bgColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: blackColor,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: blackColor,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    Text('Good Morning, Dara!',
                        style: boldTextStyle.copyWith(color: deepGrey)),
                    SizedBox(
                      height: 1.h,
                    ),
                    Container(
                      padding: EdgeInsets.all(1.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 1.0,
                            ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Total Balance',
                                style: smallTextStyle,
                              ),
                              Spacer(),
                              Icon(
                                Icons.calendar_month,
                                color: deepGrey,
                                size: 2.sp,
                              ),
                              SizedBox(
                                width: 0.5.h,
                              ),
                              Text(
                                '20 Maret 2000',
                                style: smallTextStyle,
                              ),
                              SizedBox(
                                width: 1.5.h,
                              ),
                            ],
                          ),
                          Text(
                            'Rp. 5,000,000.00',
                            style: boldTextStyle,
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Income: ',
                                    style: smallTextStyle,
                                  ),
                                  Text('Rp. 500,000', style: boldTextStyle)
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Expense: ',
                                    style: smallTextStyle,
                                  ),
                                  Text('Rp. 300,000', style: boldTextStyle)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      padding: EdgeInsets.all(2.h),
                      decoration: BoxDecoration(
                          color: deepGrey,
                          borderRadius: BorderRadius.circular(8.sp)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Budget',
                                style: smallTextStyle.copyWith(
                                    color: Colors.white),
                              ),
                              Spacer(),
                              Text(
                                'Remaining Budget: Rp. 150,000',
                                style: smallTextStyle.copyWith(
                                    color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          LinearProgressIndicator(
                            value: _remainingBudget,
                            color: Colors.white,
                            backgroundColor: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    transactionHistory(),
                    transactionHistory(),
                    transactionHistory()
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
