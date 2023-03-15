import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistPropertyList extends StatefulWidget {
  final propartyImage;
  final propartyName;
  final propartyLocation;
  final propartyRentText;
  final propartyRatingText;
  final facilityList;
  final hasContentMargin;
  final dateText;
  final hasNavigat;
  final routeName;
  const WishlistPropertyList({Key? key,
    this.propartyImage = '',
    this.propartyName = '',
    this.propartyLocation = '',
    this.propartyRentText = '',
    this.propartyRatingText = '',
    this.dateText = '',
    this.facilityList,
    this.hasNavigat = false,
    this.routeName,
    this.hasContentMargin = true})
    : super(key: key);

  @override
  State<WishlistPropertyList> createState() => _WishlistPropertyListState();
}

class _WishlistPropertyListState extends State<WishlistPropertyList> {
  bool likeBtn = true;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        widget.hasNavigat ? Navigator.pushNamed(context, widget.routeName) : null;
      },
      child: Container(
        width: size.width,
        margin: EdgeInsets.only(bottom: widget.hasContentMargin ? 10.h : 0.h),
        padding: EdgeInsets.only(top: 12.w, left: 12.w, bottom: 12.w, right: 17.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 17.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.06),
                    offset: Offset(0, 2),
                    blurRadius: 6,
                    spreadRadius: 0.1,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  widget.propartyImage,
                  width: 95.w,
                  height: 95.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.propartyName,
                          style: TextStyle(
                            color: const Color.fromRGBO(12, 12, 38, 1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              likeBtn = !likeBtn;
                            });
                          },
                          child: Image.asset(
                            likeBtn ? likeActiveIcon : unActiveFavouriteIcon,
                            width: 15.w,
                            height: 15.w,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.h),
                    child: Row(
                      children: [
                        Image.asset(
                          locationGrayIcon,
                          width: 13.w,
                          height: 13.w,
                          fit: BoxFit.contain,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4.w),
                          child: Text(
                            widget.propartyLocation,
                            style: TextStyle(
                              color: const Color.fromRGBO(119, 118, 130, 1),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8.h),
                    child: Row(
                      children: [
                        Image.asset(
                          calendarLineIcon,
                          width: 13.w,
                          height: 13.w,
                          fit: BoxFit.contain,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4.w),
                          child: Text(
                            widget.dateText,
                            style: TextStyle(
                              color: const Color.fromRGBO(119, 118, 130, 1),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.propartyRentText,
                        style: TextStyle(
                          color: const Color.fromRGBO(241, 95, 95, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 2.w),
                            child: Image.asset(
                              starIcon,
                              width: 11.w,
                              height: 11.w,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            widget.propartyRatingText,
                            style: TextStyle(
                              color: const Color.fromRGBO(119, 118, 130, 1),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
