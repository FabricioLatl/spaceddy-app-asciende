import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/AuthInput.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/CommonImageBtn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                top: 37.h, bottom: 70.h, left: 40.w, right: 40.w),
            child: Column(
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
                  margin: EdgeInsets.only(bottom: 38.h),
                  child: Text(
                    'Spaceddy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(12, 12, 38, 1),
                        letterSpacing: -0.2.sp),
                  ),
                ),
                const AuthInput(
                  keyBoardType: TextInputType.name,
                  placeholder: 'Nombre Completo',
                ),
                const AuthInput(
                  keyBoardType: TextInputType.emailAddress,
                  placeholder: 'E-mail ',
                ),
                const AuthInput(
                  keyBoardType: TextInputType.number,
                  placeholder: 'Numero de celular',
                ),
                const AuthInput(
                    keyBoardType: TextInputType.text,
                    placeholder: 'Contraseña',
                    hasPassword: true,
                    hasMargin: false),
                CommonBtn(
                    btnText: 'Registrarse',
                    hasSpacing: EdgeInsets.symmetric(vertical: 32.h),
                    hasNavigat: true,
                    routeName: route.kSignupConfirmNumberScreenRoute),
                Container(
                  width: size.width,
                  margin: EdgeInsets.only(bottom: 32.h),
                  child: Text(
                    'O has login usando',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(119, 118, 130, 1),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CommonImageBtn(
                        btnImage: googleIcon,
                        btnText: 'Google',
                        hasSpacing: EdgeInsets.only(right: 10.5.w),
                      ),
                    ),
                    Expanded(
                      child: CommonImageBtn(
                        btnImage: faceBookIcon,
                        btnText: 'Facebook',
                        hasSpacing: EdgeInsets.only(left: 10.5.w),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 42.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ya tienes una cuenta?',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(119, 118, 130, 1),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, route.kLoginScreenRoute);
                        },
                        child: Text(
                          ' Log in',
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
    );
  }
}
