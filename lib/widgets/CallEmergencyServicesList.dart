import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallEmergencyServicesList extends StatelessWidget {
  final textStyle;
  final style;
  final serviceText;
  final emergencyNumber;
  final onPress;
  final serviceImage;
  const CallEmergencyServicesList(
    {Key? key,
    this.textStyle = false,
    this.style,
    this.serviceText = '',
    this.emergencyNumber = '',
    this.onPress,
    this.serviceImage = callMissedIcon})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 15.h),
      margin: EdgeInsets.only(bottom: 33.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color.fromRGBO(244, 244, 244, 1),
            width: 2.h,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 15.w),
                child: Image.asset(
                  serviceImage,
                  width: 20.w,
                  height: 20.w,
                ),
              ),
              Text(
                serviceText,
                style: textStyle
                ? style
                : TextStyle(
                  color: const Color.fromRGBO(12, 12, 38, 1),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15.w),
            child: GestureDetector(
              onTap: () {
                onPress;
              },
              child: Text(
                emergencyNumber,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: const Color.fromRGBO(241, 95, 95, 1),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
