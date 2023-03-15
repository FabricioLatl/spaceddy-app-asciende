
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/MyRentalPropertyList.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class MyRentalPropertyPageHistoryTab extends StatefulWidget {
  const MyRentalPropertyPageHistoryTab({Key? key}) : super(key: key);

  @override
  State<MyRentalPropertyPageHistoryTab> createState() => _MyRentalPropertyPageHistoryTabState();
}

class _MyRentalPropertyPageHistoryTabState extends State<MyRentalPropertyPageHistoryTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: ListView.builder(
          padding: const EdgeInsets.all(0.0),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: myHistoryPropertyList.length,
          itemBuilder: (context, index) {
            return MyRentalPropertyList(
              propartyImage: myHistoryPropertyList[index].propartyImage,
              propartyName: myHistoryPropertyList[index].propartyName,
              propartyLocation: myHistoryPropertyList[index].propartyLocation,
              propartyRentText: myHistoryPropertyList[index].propartyRentText,
              propartyRatingText: myHistoryPropertyList[index].propartyRatingText,
              facilityList: myHistoryPropertyList[index].facilityList,
              dateText: myHistoryPropertyList[index].dateText,
              hasNavigat: true,
              routeName: route.kHistoryPropertyScreenRoute,
            );
          },
        ),
      ),
    );
  }
}
