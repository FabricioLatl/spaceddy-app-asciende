import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentLocationSearchResult extends StatelessWidget {
  final locationAddress;
  const CurrentLocationSearchResult({Key? key, this.locationAddress = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15.h),
      margin: EdgeInsets.only(bottom: 23.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color.fromRGBO(224, 224, 224, 0.4),
            width: 2.h,
          ),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            searchGrayLine,
            width: 20.w,
            height: 20.w,
          ),
          Container(
            margin: EdgeInsets.only(left: 15.w),
            child: Text(
              locationAddress,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(119, 118, 130, 1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
