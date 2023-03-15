
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/PaymentMathodList.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class PaymentMathodScreen extends StatefulWidget {
  const PaymentMathodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMathodScreen> createState() => _PaymentMathodScreenState();
}

class _PaymentMathodScreenState extends State<PaymentMathodScreen> {
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
          child: const Header(hasBackBtn: true, title: 'Payment Mathod'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 23.h, left: 20.w, right: 20.w, bottom: 30.h),
          child: Column(
            children: [
              const CommonHeading(
                headingText: 'Edit your payment methods',
                hasSpacing: false,
                hasBtn: false,
              ),
              ListView.builder(
                padding: const EdgeInsets.all(0.0),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: paymentMethodList.length,
                itemBuilder: (context, index) {
                  return PaymentMathodList(
                    hasMargin: index == 0 ? false : true,
                    paymentIcon: paymentMethodList[index].paymentIcon,
                    paymentText: paymentMethodList[index].paymentText
                  );
                },
              ),
              SizedBox(
                width: 232.w,
                child: CommonBtn(
                  btnText: 'Add payment method',
                  hasSpacing: EdgeInsets.only(top: 37.h),
                  hasNavigat: true,
                  routeName: route.kAddPaymentMathodScreenRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
