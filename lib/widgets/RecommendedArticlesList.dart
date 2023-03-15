import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedArticlesList extends StatelessWidget {
  final recommendedArticlesText;
  final hasMargin;
  final bottomMargin;
  const RecommendedArticlesList(
    {Key? key,
    this.recommendedArticlesText = '',
    this.hasMargin = false,
    this.bottomMargin = EdgeInsets.zero})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
          Expanded (
            child: Text(
              recommendedArticlesText,
              style: TextStyle(
                color: const Color.fromRGBO(12, 12, 38, 1),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
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
          ),
        ],
      ),
    );
  }
}
