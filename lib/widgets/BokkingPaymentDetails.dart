
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BokkingPaymentDetails extends StatelessWidget {
  final bookingPaymentDetailHeading;
  const BokkingPaymentDetails({Key? key, this.bookingPaymentDetailHeading = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CommonHeading(
          headingText: bookingPaymentDetailHeading,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.w),
                    child: Image.asset(
                      cCMasterCardIcon,
                      width: 20.w,
                      height: 20.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Credit or Debit Card',
                    style: TextStyle(
                      color: const Color.fromRGBO(12, 12, 38, 1),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w),
                child: Text(
                  'Edit',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: const Color.fromRGBO(214, 95, 95, 1),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
