import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ready_rental/routes/Routes.dart' as route;
import 'package:share_plus/share_plus.dart';

class BookPropertyImgText extends StatelessWidget {
  final hasLocation;
  final hasRatingText;
  final ratingText;
  final hasTextPadding;
  final bookPropertyName;
  final hasImageRadius;
  final hasImageHeight;
  final double bookPropertyImageHeight;
  const BookPropertyImgText(
      {Key? key,
      this.hasLocation = false,
      this.hasRatingText = false,
      this.ratingText = '4.6',
      this.hasTextPadding = false,
      this.bookPropertyName = 'Orchad Row House',
      this.hasImageRadius = true,
      this.hasImageHeight = false,
      this.bookPropertyImageHeight = 0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 23.h),
          child: ClipRRect(
            borderRadius: hasImageRadius ? BorderRadius.circular(12.r) : BorderRadius.circular(0.r),
            child: Stack(
              children: [
                Image.asset(
                  houseImage1,
                  width: size.width,
                  height: hasImageHeight ? bookPropertyImageHeight : 230.w,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: size.width,
                    height: size.height,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment(0.0, 0.0),
                        colors: <Color>[
                          Color.fromRGBO(33, 37, 41, 0),
                          Color.fromRGBO(33, 37, 41, 0.4)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: hasTextPadding
            ? EdgeInsets.symmetric(horizontal: 20.w)
            : EdgeInsets.zero,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      bookPropertyName,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(12, 12, 38, 1),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.w),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, route.kWishlistScreenRoute);
                            },
                            child: Image.asset(
                              likeLineIcon,
                              width: 20.w,
                              height: 20.w,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.w),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, route.kChatDetailScreenRoute);
                            },
                            child: Image.asset(
                              sendLineIcon,
                              width: 20.w,
                              height: 20.w,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.w),
                          child: GestureDetector(
                            onTap: () {
                              Share.share('check out my website https://zluck.com');
                            },
                            child: Image.asset(
                              shareLineIcon,
                              width: 20.w,
                              height: 20.w,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(bottom: 6.h),
                child: Text(
                  "Standard and deluxe rooms are beautifully designed and tastefully designed with attention to detail, which will bring maximum comfort and convenience to customers whether it's relaxing time or at work.",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(119, 118, 130, 1),
                  ),
                ),
              ),
              hasLocation
                  ? Container(
                      margin: EdgeInsets.only(bottom: 6.h),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 6.w),
                            child: Image.asset(
                              locationLineIcon,
                              width: 14.w,
                              height: 16.9.w,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            'A-6 Om sai row house, Vip road, Vesu, Surat',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(55, 65, 81, 1),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
              Container(
                margin: EdgeInsets.only(bottom: 23.h),
                child: Row(
                  children: [
                    hasRatingText
                        ? Container(
                            margin: EdgeInsets.only(right: 12.w),
                            child: Text(
                              ratingText,
                              style: TextStyle(
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(12, 12, 38, 1),
                              ),
                            ),
                          )
                        : Container(),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5.w),
                          child: Image.asset(
                            starIcon,
                            width: 14.w,
                            height: 14.w,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5.w),
                          child: Image.asset(
                            starIcon,
                            width: 14.w,
                            height: 14.w,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5.w),
                          child: Image.asset(
                            starIcon,
                            width: 14.w,
                            height: 14.w,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5.w),
                          child: Image.asset(
                            starIcon,
                            width: 14.w,
                            height: 14.w,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Image.asset(
                          starIcon,
                          width: 14.w,
                          height: 14.w,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
