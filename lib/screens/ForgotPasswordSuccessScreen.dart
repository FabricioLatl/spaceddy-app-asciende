

import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class ForgotPasswordSuccessScreen extends StatefulWidget {
  const ForgotPasswordSuccessScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordSuccessScreen> createState() => _ForgotPasswordSuccessScreenState();
}

class _ForgotPasswordSuccessScreenState extends State<ForgotPasswordSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 0.h, bottom: 40.h),
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 21.h),
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Image.asset(
                          successIcon,
                          width: 70.w,
                          height: 70.w,
                        ),
                      ),
                      Container(
                        width: size.width,
                        margin: EdgeInsets.only(bottom: 38.h),
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          'Success',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(12, 12, 38, 1),
                            letterSpacing: -0.2.sp,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width,
                        margin: EdgeInsets.only(bottom: 23.h),
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          'Congratulations your number has\nbeen confirmed.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(119, 118, 130, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: CommonBtn(
                    btnText: 'Log in',
                    // hasSpacing: EdgeInsets.only(top: 32.h),
                    hasNavigat: true,
                    routeName: route.kMainScreenRoute,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
