
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertyDetailsRaiting extends StatelessWidget {
  final ratingText;
  const PropertyDetailsRaiting({Key? key, this.ratingText = '9.6'})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 13.h),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 15.w),
                child: Text(
                  ratingText,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(12, 12, 38, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 14.w,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: index == 0 ? EdgeInsets.zero : EdgeInsets.only(left: 5.w),
                      child: Image.asset(
                        starIcon,
                        width: 14.w,
                        height: 14.w,
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          padding: const EdgeInsets.all(0.0),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: propertyDetailsRaitingSliderList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: index == 0 ? EdgeInsets.zero : EdgeInsets.only(top: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      propertyDetailsRaitingSliderList[index].text,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(119, 118, 130, 1),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 240.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: const Color.fromRGBO(255, 240, 240, 1),
                        ),
                      ),
                      Container(
                        width: propertyDetailsRaitingSliderList[index].width,
                        height: 6.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: const Color.fromRGBO(241, 95, 95, 1),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
