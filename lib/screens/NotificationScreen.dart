
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/CallEmergencyServicesList.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/NotificationList.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
          child: Header(
            hasBackBtn: true,
            title: 'Notification',
            rightIcon: Row(
              children: [
                Text(
                  'Clear',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(241, 95, 95, 1),
                    height: 1.6.h
                  ),
                ),
              ],
            )
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 17.h, bottom: 30.h),
          child: ListView.builder(
            padding: const EdgeInsets.all(0.0),
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: notificationList.length,
            itemBuilder: (context, index) {
              return NotificationList(
                unReadMsg: index == 0 ? true : false,
                icon: notificationList[index].icon,
                heading: notificationList[index].heading,
                time: notificationList[index].time,
                paragraph: notificationList[index].paragraph,
              );
            },
          ),
        ),
      ),
    );
  }
}
