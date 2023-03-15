
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/PropartyFacilityContent.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;
import 'package:share_plus/share_plus.dart';

class PopularDestionationColumn extends StatefulWidget {
  final hasContentMargin;
  final image;
  final heading;
  final price;
  final location;
  final ratingStar;
  const PopularDestionationColumn({Key? key,
    this.hasContentMargin = true,
    this.image = houseImage1,
    this.heading = '',
    this.price = '',
    this.location = '',
    this.ratingStar = ''})
    : super(key: key);

  @override
  State<PopularDestionationColumn> createState() => _PopularDestionationColumnState();
}

class _PopularDestionationColumnState extends State<PopularDestionationColumn> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route.kPropertyDetailsScreenRoute);
      },
      child: Container(
        width: size.width,
        margin: EdgeInsets.only(bottom: widget.hasContentMargin ? 21.h : 0.h),
        padding: EdgeInsets.only(top: 12.w, left: 12.w, bottom: 20.w, right: 12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset(
                widget.image,
                width: size.width,
                height: 211.w,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.h),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.heading,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(12, 12, 38, 1),
                              letterSpacing: -0.002.sp,
                            ),
                          ),
                        ),
                        Text(
                          widget.price,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(241, 95, 95, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 4.w),
                                child: Image.asset(
                                  locationGrayIcon,
                                  width: 13.w,
                                  height: 13.w,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                widget.location,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(119, 118, 130, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 2.w),
                              child: Image.asset(
                                starIcon,
                                width: 13.w,
                                height: 13.w,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              widget.ratingStar,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(119, 118, 130, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 18.h,
                          child: ListView.separated(
                            separatorBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                width: 13.w,
                              );
                            },
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: facilityList.length,
                            itemBuilder: (context, index) {
                              return PropartyFacilityContent(
                                iconImage: facilityList[index].iconImage,
                                text: facilityList[index].text,
                              );
                            },
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, route.kWishlistScreenRoute);
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 3.5.w),
                              child: Image.asset(
                                unActiveFavouriteIcon,
                                width: 13.w,
                                height: 13.w,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, route.kChatDetailScreenRoute);
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 3.5.w),
                              child: Image.asset(
                                unActiveChatIcon,
                                width: 13.w,
                                height: 13.w,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Share.share('check out my website https://zluck.com');
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 3.5.w),
                              child: Image.asset(
                                shareFillIcon,
                                width: 13.w,
                                height: 13.w,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
