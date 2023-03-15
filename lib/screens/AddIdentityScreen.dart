
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class AddIdentityScreen extends StatefulWidget {
  const AddIdentityScreen({Key? key}) : super(key: key);

  @override
  State<AddIdentityScreen> createState() => _AddIdentityScreenState();
}

class _AddIdentityScreenState extends State<AddIdentityScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(hasBackBtn: true, title: 'Identity Verification'),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'This helps us check that you’re really you.\nidentity verification is one of the ways we\nkeep Redy Rental secure.',
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
                          btnText: 'Add an ID',
                          hasSpacing: EdgeInsets.only(top: 37.h),
                          hasNavigat: true,
                          routeName: route.kIdentityVerificationScreenRoute,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'How this work',
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
