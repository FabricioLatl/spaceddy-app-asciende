
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonRadioList extends StatefulWidget {
  final radioValue;
  final idProofName;
  const CommonRadioList({Key? key, this.radioValue = '', this.idProofName = ''}): super(key: key);

  @override
  State<CommonRadioList> createState() => _CommonRadioListState();
}

class _CommonRadioListState extends State<CommonRadioList> {
  String? proofId;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(bottom: 15.h),
        margin: EdgeInsets.only(bottom: 23.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: const Color.fromRGBO(241, 241, 241, 1),
              width: 2.h,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.idProofName,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(12, 12, 12, 1),
              ),
            ),
            Container(
              width: 14.w,
              height: 14.w,
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(241, 95, 95, 1),
                  width: 2.w,
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(14.r),
              ),
            )
          ]
        ),
      ),
    );
  }
}
