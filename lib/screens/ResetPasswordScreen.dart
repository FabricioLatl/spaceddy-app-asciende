import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/FloatingInput.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(hasBackBtn: true, title: 'Reset Password'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.symmetric(vertical: 23.h, horizontal: 40.w),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 33.h),
                child: Text(
                  'Enter a different password with the previous',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(119, 118, 130, 1),
                  ),
                ),
              ),
              const FloatingInput(
                labelText: 'New Password',
                hasPassword: true,
                keyBoardType: TextInputType.text,
              ),
              const FloatingInput(
                labelText: 'Confirm Password',
                hasPassword: true,
                keyBoardType: TextInputType.text,
                hasMargin: false,
              ),
              CommonBtn(
                btnText: 'Reset Password',
                hasSpacing: EdgeInsets.only(top: 37.h, bottom: 15.h),
                hasNavigat: true,
                routeName: route.kForgotPasswordSuccessScreenRoute,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
