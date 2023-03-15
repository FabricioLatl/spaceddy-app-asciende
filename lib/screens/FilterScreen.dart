import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/CancellationPolicy.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/MyRentalPropertyList.dart';
import 'package:flutter_ready_rental/widgets/ProductCounter.dart';
import 'package:flutter_ready_rental/widgets/PropartyFacilityContent.dart';
import 'package:flutter_ready_rental/widgets/RangDatepicker.dart';
import 'package:flutter_ready_rental/widgets/RangSlider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:flutter_counter/flutter_counter.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String? proofId;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(hasBackBtn: true, title: 'Filtros'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(top: 23.h, left: 20.w, right: 20.w, bottom: 30.h),
          child: Column(
            children: [
              const CommonHeading(
                headingText: 'Tipo de propiedad',
                hasSpacing: false,
                hasBtn: false,
                hasMargin: false,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 33.h, top: 10.h),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: propertyTypeList.length,
                  itemBuilder: (ctx, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: const Color.fromRGBO(244, 244, 244, 1),
                            width: 2.h,
                          ),
                        ),
                      ),
                      child: RadioListTile<String>(
                        title: Text(
                          propertyTypeList[index].propertyTypeName,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color.fromRGBO(12, 12, 38, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        value: propertyTypeList[index].radioValue,
                        groupValue: proofId,
                        controlAffinity: ListTileControlAffinity.trailing,
                        activeColor: const Color.fromRGBO(241, 95, 95, 1),
                        contentPadding: EdgeInsets.zero,
                        onChanged: (value) {
                          setState(() {
                            proofId = value.toString();
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              const RangSlider(),
              Container(
                padding: EdgeInsets.only(bottom: 15.h),
                margin: EdgeInsets.only(bottom: 23.h),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color.fromRGBO(244, 244, 244, 1),
                      width: 2.h,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Bedrooms',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(12, 12, 38, 1),
                        ),
                      ),
                    ),
                    const ProductCounter(),
                  ],
                ),
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
                  children: [
                    Expanded(
                      child: Text(
                        'Bathrooms',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(12, 12, 38, 1),
                        ),
                      ),
                    ),
                    const ProductCounter(),
                  ],
                ),
              ),
              const CommonHeading(
                headingText: 'Rules',
                hasSpacing: false,
                hasBtn: false,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 33.h),
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
                  itemCount: rentalPropertyRulesList.length,
                  itemBuilder: (context, index) {
                    return PropartyFacilityContent(
                      iconImage: rentalPropertyRulesList[index].iconImage,
                      text: rentalPropertyRulesList[index].text,
                      column: true,
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 37.h),
                child: const CancellationPolicy(
                  cancellationPolicyHeading: 'Cancellation Policy',
                ),
              ),
              SizedBox(
                width: 165.w,
                child: const CommonBtn(
                  btnText: 'Apply',
                  // hasNavigat: true,
                  // routeName: route,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
