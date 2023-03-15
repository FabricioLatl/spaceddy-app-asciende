
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BokkingPriceDetails extends StatelessWidget {
  final bookingPriceDetailHeading;
  const BokkingPriceDetails({Key? key, this.bookingPriceDetailHeading = ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CommonHeading(
          headingText: bookingPriceDetailHeading,
          hasSpacing: false,
          hasBtn: false,
        ),
        Container(
          padding: EdgeInsets.only(bottom: 15.h),
          margin: EdgeInsets.only(bottom: 33.h),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: const Color.fromRGBO(244, 244, 244, 1),
                width: 2.h,
              ),
            ),
          ),
          child: Column(
            children: [
              ListView.builder(
                padding: const EdgeInsets.all(0.0),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: bookingPriceDetailList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: index == 2 ? 10.h : 6.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10.w),
                          child: Text(
                            bookingPriceDetailList[index].bookingPriceDetailText,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(119, 118, 130, 1),
                            ),
                          ),
                        ),
                        Text(
                          bookingPriceDetailList[index].bookingPriceText,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(119, 118, 130, 1),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.w),
                    child: Text(
                      'Total ( USD )',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(12, 12, 38, 1),
                      ),
                    ),
                  ),
                  Text(
                    '\$ 2430',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(12, 12, 38, 1),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
