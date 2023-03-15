import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropartyFacilityContent extends StatelessWidget {
  final column;
  final iconImage;
  final text;
  const PropartyFacilityContent({Key? key, this.column = false, this.iconImage, this.text = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      child: column ?  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 4.w),
            child: Image.asset(
              iconImage,
              width: 20.w,
              height: 20.w,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color.fromRGBO(119, 118, 130, 1),
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      )
      : Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 4.w),
            child: Image.asset(
              iconImage,
              width: 13.w,
              height: 13.w,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: const Color.fromRGBO(119, 118, 130, 1),
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
