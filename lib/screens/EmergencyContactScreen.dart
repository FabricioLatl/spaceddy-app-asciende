
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class EmergencyContactScreen extends StatefulWidget {
  const EmergencyContactScreen({Key? key}) : super(key: key);

  @override
  State<EmergencyContactScreen> createState() => _EmergencyContactScreenState();
}

class _EmergencyContactScreenState extends State<EmergencyContactScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(hasBackBtn: true, title: 'Emergency Contact'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 23.h, horizontal: 20.w),
          child: SizedBox(
            height: size.height - 150.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 23.h),
                        width: size.width,
                        child: Text(
                          'Add at least one emergency contact',
                          style: TextStyle(
                            color: const Color.fromRGBO(12, 12, 38, 1),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.02.sp,
                          ),
                        ),
                      ),
                      Text(
                        'An emergency contact gives us another possible way to help out if you’re ever in an urgent situation. We suggest you add at least one contact before you start a rental home. We’ll never share the info with other people who use Ready Rental.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color.fromRGBO(119, 118, 130, 1),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 165.w,
                        child: CommonBtn(
                          btnText: 'Add now',
                          hasSpacing: EdgeInsets.only(top: 37.h),
                          hasNavigat: true,
                          routeName: route.kEmergencyContactDetailScreenRoute,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Learn more',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(241, 95, 95, 1),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
