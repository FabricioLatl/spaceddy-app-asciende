
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/BokkingDetails.dart';
import 'package:flutter_ready_rental/widgets/BokkingPaymentDetails.dart';
import 'package:flutter_ready_rental/widgets/BokkingPriceDetails.dart';
import 'package:flutter_ready_rental/widgets/BookPropertyImgText.dart';
import 'package:flutter_ready_rental/widgets/CancellationPolicy.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/PropartyFacilityContent.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class ConfirmAndPayScreen extends StatefulWidget {
  const ConfirmAndPayScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmAndPayScreen> createState() => _ConfirmAndPayScreenState();
}

class _ConfirmAndPayScreenState extends State<ConfirmAndPayScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(hasBackBtn: true, title: 'Confirm And Pay'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 23.h, left: 20.w, right: 20.w, bottom: 110.h),
              child: Column(
                children: [
                  const BookPropertyImgText(
                    hasLocation: true,
                    hasRatingText: true,
                    ratingText: '9.6',
                  ),
                  const CommonHeading(
                    headingText: 'Facilities',
                    hasSpacing: false,
                    hasBtn: false,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 23.h),
                    margin: EdgeInsets.only(bottom: 33.h),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromRGBO(244, 244, 244, 1),
                          width: 2.h,
                        ),
                      ),
                    ),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 15 / 11,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        crossAxisCount: 5,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: rentalPropertyFacilityList.length,
                      itemBuilder: (context, index) {
                        return PropartyFacilityContent(
                          iconImage: rentalPropertyFacilityList[index].iconImage,
                          text: rentalPropertyFacilityList[index].text,
                          column: true
                        );
                      },
                    ),
                  ),
                  const BokkingDetails(
                    bookingDetailHeading: 'Your Booking'
                  ),
                  const BokkingPriceDetails(
                    bookingPriceDetailHeading: 'Price Details',
                  ),
                  const BokkingPaymentDetails(
                    bookingPaymentDetailHeading: 'Pay with',
                  ),
                  const CancellationPolicy(
                    cancellationPolicyHeading: 'Cancellation Policy',
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: size.width,
                padding: EdgeInsets.all(20.w),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.06),
                      offset: Offset(0, 2),
                      blurRadius: 6,
                      spreadRadius: 0.1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: const CommonBtn(
                        btnText: 'Confirm and pay',
                        hasNavigat: true,
                        routeName: route.kChoosePaymentOptionScreenRoute,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
