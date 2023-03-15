
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/GoogleMapPage.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/PopularDestionationColumn.dart';
import 'package:flutter_ready_rental/widgets/PropertyColumnSlider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

import 'package:snapping_sheet/snapping_sheet.dart';

class PopularDestionationScreen extends StatefulWidget {
  const PopularDestionationScreen({Key? key}) : super(key: key);

  @override
  State<PopularDestionationScreen> createState() => _PopularDestionationScreenState();
}

class _PopularDestionationScreenState extends State<PopularDestionationScreen> {
  final ScrollController listViewController = new ScrollController();
  bool mapButton = false;
    var _controller = SnappingSheetController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Header(
            hasBackBtn: true,
            title: 'Popular Destionation',
            rightIcon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, route.kFilterScreenRoute);
              },
              child: Column(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.w,
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(252, 254, 255, 1),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(241, 244, 249, 1),
                          offset: Offset(0, 8),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      filterIcon,
                      width: 20.w,
                      height: 20.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        padding: EdgeInsets.only(top: 20.h),
        child: Stack(
          children: [
            const Positioned(
              child: GoogleMapPage(),
            ),
            SnappingSheet(
              lockOverflowDrag: true,
              onSnapCompleted: (sheetPosition, snappingPosition) {
                setState(() {
                  if (sheetPosition.relativeToSnappingPositions == 1.0){
                    mapButton = true;
                  } else {
                    mapButton = false;
                  }
                });
              },
              controller: _controller,
              snappingPositions: const [
                SnappingPosition.factor(
                  positionFactor: 0.0,
                  snappingCurve: Curves.easeOutExpo,
                  snappingDuration: Duration(seconds: 1),
                  grabbingContentOffset: GrabbingContentOffset.top,
                ),
                SnappingPosition.factor(
                  snappingCurve: Curves.elasticOut,
                  snappingDuration: Duration(milliseconds: 1750),
                  positionFactor: 0.53,
                ),
                SnappingPosition.factor(
                  grabbingContentOffset: GrabbingContentOffset.bottom,
                  snappingCurve: Curves.easeInExpo,
                  snappingDuration: Duration(seconds: 1),
                  positionFactor: 1.0,
                ),
              ],
              grabbing: const GrabbingWidget(),
              grabbingHeight: 50.h,
              sheetAbove: null,
              initialSnappingPosition: const SnappingPosition.factor(positionFactor: 0.53),
              sheetBelow: SnappingSheetContent(
                childScrollController: listViewController,
                child: Stack(
                  children: [
                    Container(
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: ListView.builder(
                                padding: const EdgeInsets.all(0.0),
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                itemCount: popularDestionationList.length,
                                itemBuilder: (context, index) {
                                  return PopularDestionationColumn(
                                    image: popularDestionationList[index].image,
                                    heading: popularDestionationList[index].heading,
                                    price: popularDestionationList[index].price,
                                    location: popularDestionationList[index].location,
                                    ratingStar: popularDestionationList[index].ratingStar,
                                  );
                                },
                              ),
                            ),
                            const CommonHeading(
                              headingText: 'Make Your First Booking',
                              hasNavigat: true,
                              routeName: route.kPopularDestionationScreenRoute,
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 20.h),
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: PropertyColumnSlider(
                                hasSliderHeight: 200.w,
                                sliderData: destinationSliderList,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: const PopularDestionationColumn(
                                image: houseImage5,
                                heading: 'Nomaden Sekut House',
                                price: '\$ 200 / Month',
                                location: 'San Diego, California, USA',
                                ratingStar: '4.8',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    mapButton ? Positioned(
                      bottom: 33.h,
                      left: size.width / 2 - 35.w,
                      child: GestureDetector(
                        onTap: () {
                          _controller.snapToPosition(const SnappingPosition.factor(positionFactor: 0.05));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(33, 37, 41, 0.4),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5.w),
                                child: Image.asset(
                                  mapMarkedWhiteIcon,
                                  width: 20.w,
                                  height: 20.w,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                'Map',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.02.sp,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ) : Container(),
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

class GrabbingWidget extends StatelessWidget {
  const GrabbingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(250, 250, 250, 1),
      padding: EdgeInsets.symmetric(vertical: 23.h),
      child: Column(
        children: [
          Container(
            width: 50.w,
            height: 3.w,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(61, 61, 61, 1),
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ],
      ),
    );
  }
}
