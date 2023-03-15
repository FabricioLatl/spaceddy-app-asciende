import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonHeading extends StatelessWidget {
  final hasSpacing;
  final hasMargin;
  final headingText;
  final hasBtn;
  final hasBtnText;
  final onPress;
  final hasNavigat;
  final routeName;
  const CommonHeading({
    Key? key,
    this.hasSpacing = true,
    this.hasMargin = true,
    this.headingText = '',
    this.hasBtn = true,
    this.hasBtnText = 'Ver todos',
    this.onPress,
    this.hasNavigat = false,
    this.routeName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: hasSpacing ? 20.w : 0.w),
      margin: EdgeInsets.only(bottom: hasMargin ? 23.h : 0.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            headingText,
            style: TextStyle(
              color: const Color.fromRGBO(12, 12, 38, 1),
              fontSize: 18.sp,
              letterSpacing: -0.02.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          hasBtn
              ? GestureDetector(
                  onTap: () {
                    hasNavigat ? Navigator.pushNamed(context, routeName) : null;
                    onPress;
                  },
                  child: Row(
                    children: [
                      Text(
                        hasBtnText,
                        style: TextStyle(
                          color: const Color.fromRGBO(119, 118, 130, 1),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.67.w),
                        child: Image.asset(
                          rightSmallGrayIcon,
                          width: 4.67.w,
                          height: 8.w,
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
