
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/FloatingInput.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class EmergencyContactDetailScreen extends StatefulWidget {
  const EmergencyContactDetailScreen({Key? key}) : super(key: key);

  @override
  State<EmergencyContactDetailScreen> createState() => _EmergencyContactDetailScreenState();
}

class _EmergencyContactDetailScreenState extends State<EmergencyContactDetailScreen> {
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
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.symmetric(vertical: 23.h, horizontal: 20.w),
          child: SizedBox(
            height: size.height - 150.h,
            child: Column(
              children: [
                const FloatingInput(
                  labelText: 'Full Name',
                  hasPassword: false,
                  keyBoardType: TextInputType.text,
                ),
                const FloatingInput(
                  labelText: 'E-mail Address',
                  hasPassword: false,
                  keyBoardType: TextInputType.emailAddress,
                ),
                const FloatingInput(
                  labelText: 'Phone Number',
                  hasPassword: false,
                  keyBoardType: TextInputType.number,
                ),
                const FloatingInput(
                  labelText: 'Relationship',
                  hasPassword: false,
                  keyBoardType: TextInputType.text,
                ),
                Container(
                  width: size.width,
                  margin: EdgeInsets.only(bottom: 8.h),
                  child: Text(
                    'Preferred language',
                    style: TextStyle(
                      color: const Color.fromRGBO(119, 118, 130, 1),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, route.kSelectPreferredLanguageScreenRoute);
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 15.h),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromRGBO(241, 241, 241, 1),
                          width: 2.h,
                        ),
                      ),
                    ),
                    child: Row(children: [
                      Expanded(
                        child: Text(
                          'English',
                          style: TextStyle(
                            color: const Color.fromRGBO(12, 12, 38, 1),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
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
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  width: 165.w,
                  child: CommonBtn(
                    btnText: 'Save',
                    hasSpacing: EdgeInsets.only(top: 37.h),
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
