import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class SignupConfirmNumberScreen extends StatefulWidget {
  const SignupConfirmNumberScreen({Key? key}) : super(key: key);

  @override
  State<SignupConfirmNumberScreen> createState() =>
      _SignupConfirmNumberScreenState();
}

class _SignupConfirmNumberScreenState extends State<SignupConfirmNumberScreen> {
  OtpFieldController otpController = OtpFieldController();
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
            padding: EdgeInsets.only(top: 37.h, bottom: 70.h),
            child: SizedBox(
              height: size.height - 150.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 21.h),
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Image.asset(
                          logoImage,
                          width: 70.w,
                          height: 70.w,
                        ),
                      ),
                      Container(
                        width: size.width,
                        margin: EdgeInsets.only(bottom: 38.h),
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          'Confirma tu numero de celular',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(12, 12, 38, 1),
                              letterSpacing: -0.2.sp),
                        ),
                      ),
                      Container(
                        width: size.width,
                        margin: EdgeInsets.only(bottom: 23.h),
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          'Ingresa el codigo que enviamos a \n+51 982 859 000:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(119, 118, 130, 1),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 40.w),
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.02),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          )
                        ]),
                        child: OTPTextField(
                            controller: otpController,
                            length: 6,
                            width: MediaQuery.of(context).size.width,
                            textFieldAlignment: MainAxisAlignment.spaceBetween,
                            fieldWidth: 40.w,
                            otpFieldStyle: OtpFieldStyle(
                              backgroundColor: Colors.white,
                              borderColor: Colors.white,
                              errorBorderColor: Colors.white,
                              focusBorderColor: Colors.white,
                              enabledBorderColor: Colors.white,
                              disabledBorderColor: Colors.white,
                            ),
                            fieldStyle: FieldStyle.box,
                            outlineBorderRadius: 12.r,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(119, 118, 130, 1),
                            ),
                            contentPadding: EdgeInsets.all(10.w),
                            onChanged: (pin) {},
                            onCompleted: (pin) {}),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 42.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'No te llego un codigo? ',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(119, 118, 130, 1),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, route.kLoginScreenRoute);
                              },
                              child: Text(
                                'Reenviar',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: CommonBtn(
                      btnText: 'Continue',
                      hasSpacing: EdgeInsets.only(top: 32.h),
                      hasNavigat: true,
                      routeName: route.kSignupConfirmNumSuccessScreenRoute,
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
