import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class SignupConfirmNumSuccessScreen extends StatefulWidget {
  const SignupConfirmNumSuccessScreen({Key? key}) : super(key: key);

  @override
  State<SignupConfirmNumSuccessScreen> createState() =>
      _SignupConfirmNumSuccessScreenState();
}

class _SignupConfirmNumSuccessScreenState
    extends State<SignupConfirmNumSuccessScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, route.kLoginScreenRoute);
    });
  }

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
            padding: EdgeInsets.only(
                top: 37.h, bottom: 70.h, left: 20.w, right: 20.w),
            child: SizedBox(
              height: size.height - 150.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 22.h),
                        child: Image.asset(
                          successIcon,
                          width: 70.w,
                          height: 70.w,
                        ),
                      ),
                      Container(
                        width: size.width,
                        margin: EdgeInsets.only(bottom: 33.h),
                        child: Text(
                          'Confirmado!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(12, 12, 38, 1),
                            letterSpacing: -0.2.sp,
                          ),
                        ),
                      ),
                      Text(
                        'El numero de celular \n Ha sido confirmado.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(119, 118, 130, 1),
                        ),
                      ),
                    ],
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
