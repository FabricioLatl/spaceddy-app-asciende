
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BokkingDetails extends StatelessWidget {
  final bookingDetailHeading;
  const BokkingDetails({Key? key, this.bookingDetailHeading = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 33.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CommonHeading(
            headingText: bookingDetailHeading,
            hasSpacing: false,
            hasBtn: false,
          ),
          Container(
            width: size.width,
            margin: EdgeInsets.only(bottom: 23.h),
            padding: EdgeInsets.only(bottom: 15.h),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: const Color.fromRGBO(244, 244, 244, 1),
                  width: 2.h,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  margin: EdgeInsets.only(bottom: 8.h),
                  child: Text(
                    'Full Name',
                    style: TextStyle(
                      color: const Color.fromRGBO(119, 118, 130, 1),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width,
                  child: Text(
                    'Leesa Oberoy',
                    style: TextStyle(
                      color: const Color.fromRGBO(12, 12, 38, 1),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.only(bottom: 15.h),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: const Color.fromRGBO(244, 244, 244, 1),
                  width: 2.h,
                ),
              ),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: size.width,
                      margin: EdgeInsets.only(bottom: 8.h),
                      child: Text(
                        'Dates',
                        style: TextStyle(
                          color: const Color.fromRGBO(119, 118, 130, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      padding: EdgeInsets.only(right: 25.w),
                      child: Text(
                        '15 Oct 2000 - 15 Oct 2021',
                        style: TextStyle(
                          color: const Color.fromRGBO(12, 12, 38, 1),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 23.h,
                  child: Image.asset(
                    calendarSquareLineIcon,
                    width: 20.w,
                    height: 20.w,
                    fit: BoxFit.contain,
                  )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
