import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
// import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/PropartyFacilityContent.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class CategoryList extends StatefulWidget {
  final hasLocation;
  final hasPropartyFacility;
  final propartyImage;
  final propartyName;
  final propartyLocation;
  final propartyRentText;
  final propartyRatingText;
  final facilityList;
  final hasContentMargin;
  const CategoryList({Key? key,
    this.hasLocation = false,
    this.hasPropartyFacility = false,
    this.propartyImage = '',
    this.propartyName = '',
    this.propartyLocation = '',
    this.propartyRentText = '',
    this.propartyRatingText = '',
    this.facilityList,
    this.hasContentMargin = true})
    : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  bool likeBtn = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route.kPropertyDetailsScreenRoute);
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
                  width: 72.w,
                  height: 72.w,
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
                  widget.hasLocation ? Container(
                    margin: EdgeInsets.only(bottom: 8.h),
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
                  ) : Container(),
                  Container(
                    margin: EdgeInsets.only(bottom: 8.h),
                    child: Row(
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
                  ),
                  widget.hasPropartyFacility ? SizedBox(
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
                      itemCount: widget.facilityList.length,
                      itemBuilder: (context, index) {
                        return PropartyFacilityContent(
                          iconImage: widget.facilityList[index].iconImage,
                          text: widget.facilityList[index].text,
                        );
                      },
                    ),
                  ) : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
