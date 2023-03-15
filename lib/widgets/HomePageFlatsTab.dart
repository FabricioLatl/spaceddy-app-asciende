import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/CategoryList.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/PropertyColumnSlider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageFlatsTab extends StatefulWidget {
  const HomePageFlatsTab({Key? key}) : super(key: key);

  @override
  State<HomePageFlatsTab> createState() => _HomePageFlatsTabState();
}

class _HomePageFlatsTabState extends State<HomePageFlatsTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: [
          const CommonHeading(
            headingText: 'Populares',
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20.h),
            child: PropertyColumnSlider(
              hasSliderHeight: 272.w,
              viewportFraction: 0.65,
              sliderData: flatDestinationSliderList,
              sliderPadding: true,
            ),
          ),
          const CommonHeading(
            headingText: 'Mejores cerca tuyo',
          ),
          Container(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            margin: EdgeInsets.only(bottom: 33.h),
            child: ListView.builder(
              padding: const EdgeInsets.all(0.0),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: flatPropertyColumnList.length,
              itemBuilder: (context, index) {
                return CategoryList(
                    propartyImage: flatPropertyColumnList[index].propartyImage,
                    propartyName: flatPropertyColumnList[index].propartyName,
                    propartyLocation:
                        flatPropertyColumnList[index].propartyLocation,
                    propartyRentText:
                        flatPropertyColumnList[index].propartyRentText,
                    propartyRatingText:
                        flatPropertyColumnList[index].propartyRatingText,
                    facilityList: flatPropertyColumnList[index].facilityList,
                    hasPropartyFacility: true,
                    hasContentMargin: index == 3 ? false : true);
              },
            ),
          ),
          const CommonHeading(
            headingText: 'Contacta Ahora',
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: PropertyColumnSlider(
              hasSliderHeight: 200.w,
              sliderData: flatFirstBookingSliderList,
            ),
          ),
          const CommonHeading(
            headingText: 'Listados',
          ),
          Container(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            margin: EdgeInsets.only(bottom: 15.h),
            child: ListView.builder(
              padding: const EdgeInsets.all(0.0),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: flatOurCollectionColumnList.length,
              itemBuilder: (context, index) {
                return CategoryList(
                    propartyImage:
                        flatOurCollectionColumnList[index].propartyImage,
                    propartyName:
                        flatOurCollectionColumnList[index].propartyName,
                    propartyLocation:
                        flatOurCollectionColumnList[index].propartyLocation,
                    propartyRentText:
                        flatOurCollectionColumnList[index].propartyRentText,
                    propartyRatingText:
                        flatOurCollectionColumnList[index].propartyRatingText,
                    facilityList:
                        flatOurCollectionColumnList[index].facilityList,
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
