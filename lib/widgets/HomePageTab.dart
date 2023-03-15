import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/CategoryList.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/PropertyColumnSlider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class HomePageTab extends StatefulWidget {
  const HomePageTab({Key? key}) : super(key: key);

  @override
  State<HomePageTab> createState() => _HomePageTabState();
}

class _HomePageTabState extends State<HomePageTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: [
          const CommonHeading(
            headingText: 'Populares',
            hasNavigat: true,
            routeName: route.kPopularDestionationScreenRoute,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20.h),
            child: PropertyColumnSlider(
              hasSliderHeight: 272.w,
              viewportFraction: 0.65,
              sliderData: destinationSliderList,
              sliderPadding: true,
            ),
          ),
          const CommonHeading(
            headingText: 'Mejores cerca tuyo',
            hasNavigat: true,
            routeName: route.kPopularDestionationScreenRoute,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            margin: EdgeInsets.only(bottom: 33.h),
            child: ListView.builder(
              padding: const EdgeInsets.all(0.0),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: propertyColumnList.length,
              itemBuilder: (context, index) {
                return CategoryList(
                    propartyImage: propertyColumnList[index].propartyImage,
                    propartyName: propertyColumnList[index].propartyName,
                    propartyLocation:
                        propertyColumnList[index].propartyLocation,
                    propartyRentText:
                        propertyColumnList[index].propartyRentText,
                    propartyRatingText:
                        propertyColumnList[index].propartyRatingText,
                    facilityList: propertyColumnList[index].facilityList,
                    hasPropartyFacility: true,
                    hasContentMargin: index == 3 ? false : true);
              },
            ),
          ),
          const CommonHeading(
            headingText: 'Contacta ahora',
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
          const CommonHeading(
            headingText: 'Listados',
            hasNavigat: true,
            routeName: route.kPopularDestionationScreenRoute,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            margin: EdgeInsets.only(bottom: 15.h),
            child: ListView.builder(
              padding: const EdgeInsets.all(0.0),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: propertyColumnList.length,
              itemBuilder: (context, index) {
                return CategoryList(
                    propartyImage: propertyColumnList[index].propartyImage,
                    propartyName: propertyColumnList[index].propartyName,
                    propartyLocation:
                        propertyColumnList[index].propartyLocation,
                    propartyRentText:
                        propertyColumnList[index].propartyRentText,
                    propartyRatingText:
                        propertyColumnList[index].propartyRatingText,
                    facilityList: propertyColumnList[index].facilityList,
                    hasLocation: true,
                    hasContentMargin: index == 3 ? false : true);
              },
            ),
          ),
        ],
      ),
    );
  }
}
