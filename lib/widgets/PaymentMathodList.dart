import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
// import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/PropartyFacilityContent.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMathodList extends StatefulWidget {
  final hasNavigat;
  final routeName;
  final hasMargin;
  final paymentIcon;
  final paymentText;
  final hasSubText;
  const PaymentMathodList({Key? key,
    this.hasNavigat = false,
    this.routeName,
    this.hasMargin = true,
    this.paymentIcon = bankIcon,
    this.paymentText = '',
    this.hasSubText = false})
    : super(key: key);

  @override
  State<PaymentMathodList> createState() => _PaymentMathodListState();
}

class _PaymentMathodListState extends State<PaymentMathodList> {
  bool likeBtn = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        widget.hasNavigat ? Navigator.pushNamed(context, widget.routeName) : null;
      },
      child: Container(
        width: size.width,
        padding: EdgeInsets.only(bottom: 15.h),
        margin: EdgeInsets.only(top: widget.hasMargin ? 23.h : 0.h),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15.w),
                  child: Image.asset(
                    widget.paymentIcon,
                    width: 20.w,
                    height: 20.w,
                    fit: BoxFit.contain,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.paymentText,
                      style: TextStyle(
                        color: const Color.fromRGBO(12, 12, 38, 1),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    widget.hasSubText ? Container(
                      margin: EdgeInsets.only(top: 8.h),
                      child: Text(
                        'Credit Card, Debit Card',
                        style: TextStyle(
                          color: const Color.fromRGBO(119, 118, 130, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ) : Container(),
                  ],
                ),
              ],
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
      ),
    );
  }
}
