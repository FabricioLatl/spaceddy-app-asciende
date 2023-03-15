import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertyColumn extends StatelessWidget {
  final hasSpacing;
  final hasMargin;
  final headingText;
  final hasBtn;
  final propertyImage;
  final propertyName;
  final propertyLocation;
  final propertyRatingText;
  final hasPadding;
  final columnPadding;
  const PropertyColumn(
      {Key? key,
      this.hasSpacing = true,
      this.hasMargin = true,
      this.headingText = '',
      this.hasBtn = true,
      this.propertyImage = '',
      this.propertyName = '',
      this.propertyLocation = '',
      this.propertyRatingText = '',
      this.hasPadding = false,
      this.columnPadding = EdgeInsets.zero})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: hasPadding ? columnPadding : EdgeInsets.only(left: 10.w, right: 10.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: Container(
          width: size.width,
          child: Stack(
            children: [
              Image.asset(
                propertyImage,
                width: size.width,
                height: size.height,
                fit: BoxFit.cover,
              ),
              Positioned(
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment(0.0, 1.0),
                      colors: <Color>[
                        Color.fromRGBO(13, 13, 13, 0),
                        Color.fromRGBO(0, 0, 0, 0.8)
                      ],
                    ),
                  ),
                )
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 6.h),
                        child: Text(
                          propertyName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.002.sp,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            locationRedIcon,
                            width: 18.w,
                            height: 18.w,
                            fit: BoxFit.contain,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 3.w),
                            child: Text(
                              propertyLocation,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 15.w,
                right: 15.w,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: const Color.fromRGBO(12, 12, 38, 0.4),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 3.5.w, horizontal: 5.w),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 4.w),
                        child: Image.asset(
                          starIcon,
                          width: 10.w,
                          height: 10.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        propertyRatingText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
