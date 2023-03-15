import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationList extends StatelessWidget {
  final icon;
  final heading;
  final time;
  final paragraph;
  final unReadMsg;
  const NotificationList(
      {Key? key,
      this.icon = lockIcon,
      this.heading = '',
      this.time = '',
      this.paragraph = '',
      this.unReadMsg = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w),
      margin: EdgeInsets.only(bottom: 8.h),
      color: unReadMsg ? const Color.fromRGBO(255, 240, 240, 1) : const Color.fromRGBO(255, 240, 240, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10.h),
            child: Image.asset(
              icon,
              width: 20.w,
              height: 20.w,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 15.h),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: const Color.fromRGBO(224, 224, 224, 0.4),
                    width: 2.h,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 6.h),
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          heading,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(12, 12, 38, 1),
                          ),
                        ),
                        Text(
                          time,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(119, 118, 130, 1),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    child: Text(
                      paragraph,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(119, 118, 130, 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
