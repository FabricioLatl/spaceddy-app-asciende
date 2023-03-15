
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/BookPropertyImgText.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/GoogleMapPage.dart';
import 'package:flutter_ready_rental/widgets/PropartyFacilityContent.dart';
import 'package:flutter_ready_rental/widgets/PropertyDetailsRaiting.dart';
import 'package:flutter_ready_rental/widgets/PropertyDetailsReviewsList.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class PropertyDetailsScreen extends StatefulWidget {
  const PropertyDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PropertyDetailsScreen> createState() => _PropertyDetailsScreenState();
}

class _PropertyDetailsScreenState extends State<PropertyDetailsScreen> {
  bool pressing = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(250, 250, 250, 0),
        statusBarIconBrightness: Brightness.dark
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 110.h),
              child: Column(
                children: [
                  Stack(
                    children: [
                      BookPropertyImgText(
                        bookPropertyName: 'OM Sai Row House',
                        hasImageRadius: false,
                        hasTextPadding: true,
                        hasImageHeight: true,
                        bookPropertyImageHeight: 375.h
                      ),
                      Positioned(
                        top: statusBarHeight + 14.h,
                        left: 20.w,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            backIcon,
                            width: 20.w,
                            height: 20.w,
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
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
                        const CommonHeading(
                          headingText: 'Photos',
                          hasSpacing: false,
                          onPress: null,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 91.w,
                    margin: EdgeInsets.only(bottom: 33.h),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                          top: 0.w, bottom: 0.w, right: 20.w, left: 20.w),
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: propertyDetailsPhotoList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: index == 0 ? EdgeInsets.zero : EdgeInsets.only(left: 9.w),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Image.asset(
                              propertyDetailsPhotoList[index].image,
                              width: 99.w,
                              height: 91.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        const CommonHeading(
                          headingText: 'Location',
                          hasSpacing: false,
                          onPress: null,
                          hasBtnText: 'View on map',
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 15.h),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 6.w),
                                child: Image.asset(
                                  locationLineIcon,
                                  width: 14.w,
                                  height: 16.9.w,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                'A-6 Om sai row house, Vip road, Vesu, Surat',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(12, 12, 38, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: 218.w,
                          margin: EdgeInsets.only(bottom: 33.h),
                          child: const GoogleMapPage(
                            locationMarkIcon: locationMarkBlueIcon
                          ),
                        ),
                        const CommonHeading(
                          headingText: 'Raiting',
                          hasSpacing: false,
                          hasBtn: false,
                          onPress: null,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 33.h),
                          child: const PropertyDetailsRaiting(),
                        ),
                        const CommonHeading(
                          headingText: 'Reviews (54)',
                          hasSpacing: false,
                          onPress: null,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20.h),
                          child: ListView.builder(
                            padding: const EdgeInsets.all(0.0),
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemCount: propertyDetailsReviewsList.length,
                            itemBuilder: (context, index) {
                              return PropertyDetailsReviewsList(
                                image: propertyDetailsReviewsList[index].image,
                                name: propertyDetailsReviewsList[index].name,
                                date: propertyDetailsReviewsList[index].date,
                                ratingText: propertyDetailsReviewsList[index].ratingText,
                                paragraph: propertyDetailsReviewsList[index].paragraph,
                                hasMargin: index == 0 ? false :  true
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: const CommonBtn(
                        btnText: 'Book Now',
                        hasNavigat: true,
                        routeName: route.kConfirmAndPayScreenRoute,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: size.width,
                            margin: EdgeInsets.only(bottom: 6.h),
                            child: Text(
                              '\$ 200',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(214, 95, 95, 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width,
                            child: Text(
                              '/per month',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(119, 118, 130, 1),
                              ),
                            ),
                          ),
                        ],
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
