import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/HomePageFlatsTab.dart';
import 'package:flutter_ready_rental/widgets/MyRentalPropertyPageActiveTab.dart';
import 'package:flutter_ready_rental/widgets/MyRentalPropertyPageHistoryTab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class MyRentalPropertyScreen extends StatefulWidget {
  const MyRentalPropertyScreen({Key? key}) : super(key: key);

  @override
  State<MyRentalPropertyScreen> createState() => _MyRentalPropertyScreenState();
}

class _MyRentalPropertyScreenState extends State<MyRentalPropertyScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(
            hasBackBtn: true,
            title: 'My Rental Property',
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Container(
          color: const Color.fromRGBO(250, 250, 250, 1),
          padding: EdgeInsets.only(top: 23.h),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                height: 29,
                child: TabBar(
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 1.h,
                      color: const Color.fromRGBO(241, 95, 95, 1),
                    )
                  ),
                  labelColor: const Color.fromRGBO(241, 95, 95, 1),
                  unselectedLabelColor: const Color.fromRGBO(119, 118, 130, 1),
                  labelStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(241, 95, 95, 1),
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(119, 118, 130, 1),
                  ),
                  labelPadding: EdgeInsets.symmetric(horizontal: 5.w),
                  tabs: const [
                    Tab(
                      text: 'Active',
                    ),
                    Tab(
                      text: 'History',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 25.h),
                  child: const TabBarView(
                    children: [
                      MyRentalPropertyPageActiveTab(),
                      MyRentalPropertyPageHistoryTab(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
