

import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/AuthInput.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
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
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: EdgeInsets.only(top: 37.h, bottom: 70.h, left: 40.w, right: 40.w),
            child: SizedBox(
              height: size.height - 150.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 21.h),
                        child: Image.asset(
                          logoImage,
                          width: 70.w,
                          height: 70.w,
                        ),
                      ),
                      Container(
                        width: size.width,
                        margin: EdgeInsets.only(bottom: 37.h),
                        child: Text(
                          'Forgot Password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(12, 12, 38, 1),
                            letterSpacing: -0.2.sp
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 23.h),
                        child: Text(
                          'Enter your registered phone number below',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(119, 118, 130, 1),
                          ),
                        ),
                      ),
                      const AuthInput(
                        keyBoardType: TextInputType.number,
                        placeholder: 'Phone number',
                        hasMargin: false,
                      ),
                      CommonBtn(
                        btnText: 'Submit',
                        hasSpacing: EdgeInsets.only(top: 37.h, bottom: 15.h),
                        hasNavigat: true,
                        routeName: route.kForgotConfirmNumberScreenRoute,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 42.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Remember the password?',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(119, 118, 130, 1),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, route.kSignupScreenRoute);
                          },
                          child: Text(
                            ' Sign up',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(241, 95, 95, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
