
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class SafetyCenterScreen extends StatefulWidget {
  const SafetyCenterScreen({Key? key}) : super(key: key);

  @override
  State<SafetyCenterScreen> createState() => _SafetyCenterScreenState();
}

class _SafetyCenterScreenState extends State<SafetyCenterScreen> {
  bool bookBtn = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(hasBackBtn: true, title: 'Safety Center'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 23.h, left: 20.w, right: 20.w, bottom: 30.h),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 23.h),
                width: size.width,
                child: Text(
                  'Get the support, tools, and information\nyou need to be safe.',
                  style: TextStyle(
                    color: const Color.fromRGBO(119, 118, 130, 1),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, route.kCallEmergencyServicesScreenRoute);
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 15.h),
                  margin: EdgeInsets.only(bottom: 33.h),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: const Color.fromRGBO(244, 244, 244, 1),
                        width: 2.h,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 15.w),
                              child: Image.asset(
                                callMissedIcon,
                                width: 20.w,
                                height: 20.w,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Call local emergency services',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(241, 95, 95, 1),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'Get the phone number you need if someone is in danger or injured.',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(119, 118, 130, 1),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.w),
                        child: Image.asset(
                          rightGrayIcon,
                          width: 20.w,
                          height: 20.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(bottom: 23.w),
                child: Text(
                  'Learn about Ready Rental Trust & Safety',
                  style: TextStyle(
                    color: const Color.fromRGBO(12, 12, 38, 1),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.02.sp,
                  ),
                ),
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(bottom: 8.w),
                child: Text(
                  'Every year, millions of people stay in homes on Ready Rental in cities all over the world.',
                  style: TextStyle(
                    color: const Color.fromRGBO(119, 118, 130, 1),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(bottom: 8.w),
                child: Text(
                  'What makes all of that possible? Trust.',
                  style: TextStyle(
                    color: const Color.fromRGBO(119, 118, 130, 1),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(bottom: 8.w),
                child: Text(
                  'Read more',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: const Color.fromRGBO(241, 95, 95, 1),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
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
