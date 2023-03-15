
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/FloatingInput.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
          child: const Header(hasBackBtn: true, title: 'Change Password'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.only(top: 17.h, left: 40.w, right: 40.w, bottom: 30.h),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 33.h),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromRGBO(119, 118, 130, 1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const FloatingInput(
                labelText: 'Old Password',
                hasPassword: true
              ),
              const FloatingInput(
                labelText: 'New Password',
                hasPassword: true
              ),
              const FloatingInput(
                labelText: 'Confirm Password',
                hasPassword: true,
                hasMargin: false,
              ),
              SizedBox(
                width: 203.w,
                child: CommonBtn(
                  btnText: 'Change Password',
                  hasSpacing: EdgeInsets.only(top: 37.h),
                  // hasNavigat: true,
                  // routeName: route.kAddPaymentMathodScreenRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
