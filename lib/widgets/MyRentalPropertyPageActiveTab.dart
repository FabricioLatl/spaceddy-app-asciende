
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/MyRentalPropertyList.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class MyRentalPropertyPageActiveTab extends StatefulWidget {
  const MyRentalPropertyPageActiveTab({Key? key}) : super(key: key);

  @override
  State<MyRentalPropertyPageActiveTab> createState() => _MyRentalPropertyPageActiveTabState();
}

class _MyRentalPropertyPageActiveTabState extends State<MyRentalPropertyPageActiveTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: ListView.builder(
          padding: const EdgeInsets.all(0.0),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: myActivePropertyList.length,
          itemBuilder: (context, index) {
            return MyRentalPropertyList(
              propartyImage: myActivePropertyList[index].propartyImage,
              propartyName: myActivePropertyList[index].propartyName,
              propartyLocation: myActivePropertyList[index].propartyLocation,
              propartyRentText: myActivePropertyList[index].propartyRentText,
              propartyRatingText: myActivePropertyList[index].propartyRatingText,
              facilityList: myActivePropertyList[index].facilityList,
              dateText: myActivePropertyList[index].dateText,
              hasNavigat: true,
              routeName: route.kActivePropertyScreenRoute,
            );
          },
        ),
      ),
    );
  }
}
