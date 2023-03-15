
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/PaymentMathodList.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoosePaymentOptionScreen extends StatefulWidget {
  const ChoosePaymentOptionScreen({Key? key}) : super(key: key);

  @override
  State<ChoosePaymentOptionScreen> createState() => _ChoosePaymentOptionScreenState();
}

class _ChoosePaymentOptionScreenState extends State<ChoosePaymentOptionScreen> {
  bool bookBtn = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(hasBackBtn: true, title: 'Choose a payment Option'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 23.h, bottom: 30.h),
          child: Column(
            children: [
              Container(
                width: size.width,
                padding: EdgeInsets.only(bottom: 23.h, left: 20.w, right: 20.w),
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
                    Container(
                      margin: EdgeInsets.only(bottom: 8.h),
                      child: Text(
                        'Total Payble Amount \$2430',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color.fromRGBO(12, 12, 38, 1),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Text(
                      'Transaction ID: 0917412589633214',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color.fromRGBO(119, 118, 130, 1),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    const CommonHeading(
                      headingText: 'Payment Options',
                      hasSpacing: false,
                      hasBtn: false,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30.h),
                      child: ListView.builder(
                        padding: const EdgeInsets.all(0.0),
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: choosePaymentOptionList.length,
                        itemBuilder: (context, index) {
                          return PaymentMathodList(
                            hasMargin: index == 0 ? false : true,
                            paymentIcon:
                                choosePaymentOptionList[index].paymentIcon,
                            paymentText:
                                choosePaymentOptionList[index].paymentText,
                            hasSubText: index == 1 ? true : false,
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          visaTextIcon,
                          width: 50.w,
                          height: 50.w,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          mastercardFillIcon,
                          width: 50.w,
                          height: 50.w,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          readyRentalFillGrayIcon,
                          width: 50.w,
                          height: 50.w,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text:
                            'By proceeding, you understand that your information will be processed as per Ready Rental’s ',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(119, 118, 130, 1),
                        ),
                        children: const [
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Color.fromRGBO(241, 95, 95, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
