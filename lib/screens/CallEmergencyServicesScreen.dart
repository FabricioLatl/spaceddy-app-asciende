
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/CallEmergencyServicesList.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class CallEmergencyServicesScreen extends StatefulWidget {
  const CallEmergencyServicesScreen({Key? key}) : super(key: key);

  @override
  State<CallEmergencyServicesScreen> createState() => _CallEmergencyServicesScreenState();
}

class _CallEmergencyServicesScreenState extends State<CallEmergencyServicesScreen> {
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
          child: const Header(hasBackBtn: true, title: 'Call local emergency services'),
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
                headingText: 'India',
                hasBtn: true,
                hasBtnText: 'Change',
                hasSpacing: false,
                hasNavigat: true,
                routeName: route.kSelectCountryRegionScreenRoute,
              ),
              CallEmergencyServicesList(
                textStyle: true,
                style: TextStyle(
                  color: const Color.fromRGBO(241, 95, 95, 1),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
                serviceText: 'All emergencies',
                emergencyNumber: 'Call 100',
                serviceImage: callMissedIcon,
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(bottom: 23.w),
                child: Text(
                  'Phone numbers for speciffic emergencies:',
                  style: TextStyle(
                    color: const Color.fromRGBO(119, 118, 130, 1),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const CallEmergencyServicesList(
                serviceText: 'Medical',
                emergencyNumber: 'Call 102',
                serviceImage: briefcaseMedicalIcon,
              ),
              const CallEmergencyServicesList(
                serviceText: 'Fire',
                emergencyNumber: 'Call 101',
                serviceImage: gripFireIcon,
              ),
              RichText(
                text: TextSpan(
                  text: 'You’ll be taken outside of Ready Rental to call local emergency service. Use of this feature is subject to our policy. ',
                  style: TextStyle(
                    color: const Color.fromRGBO(55, 65, 81, 1),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: 'Read our policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: const Color.fromRGBO(241, 95, 95, 1),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
