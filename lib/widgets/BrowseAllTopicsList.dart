import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrowseAllTopicsList extends StatelessWidget {
  final browseAllTopicsText;
  final hasMargin;
  final bottomMargin;
  final icon;
  const BrowseAllTopicsList(
    {Key? key,
    this.browseAllTopicsText = '',
    this.hasMargin = false,
    this.bottomMargin = EdgeInsets.zero,
    this.icon = searchGrayLine})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15.h),
      margin: hasMargin ? bottomMargin : EdgeInsets.only(bottom: 23.h),
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
          Container(
            margin: EdgeInsets.only(right: 15.w),
            child: Image.asset(
              icon,
              width: 20.w,
              height: 20.w,
              fit: BoxFit.contain,
            ),
          ),
          Expanded (
            child: Text(
              browseAllTopicsText,
              style: TextStyle(
                color: const Color.fromRGBO(12, 12, 38, 1),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
