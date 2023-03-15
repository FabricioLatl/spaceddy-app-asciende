
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/ProfileMenu.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(hasBackBtn: true, title: 'Profile'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 17.h, left: 20.w, right: 20.w),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, route.kProfileEditScreenRoute);
                },
                child: Container(
                  width: size.width,
                  margin: EdgeInsets.only(bottom: 33.h),
                  padding: EdgeInsets.only(top: 13.w, bottom: 13.w, left: 15.w, right: 20.w),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.8),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40.w,
                        height: 40.w,
                        padding: EdgeInsets.all(5.w),
                        margin: EdgeInsets.only(right: 12.w),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(253, 231, 231, 1),
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                        child: Image.asset(
                          userImage,
                          width: size.width,
                          height: size.height,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Leesa Oberoy',
                              style: TextStyle(
                                color: const Color.fromRGBO(119, 118, 130, 1),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Text(
                              'leesaoberoi@gmail.com',
                              style: TextStyle(
                                color: const Color.fromRGBO(241, 95, 95, 1),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        editGrayLineIcon,
                        width: 20.w,
                        height: 20.w,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ListView.builder(
                  padding: const EdgeInsets.all(0.0),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: profileMenuList.length,
                  itemBuilder: (context, index) {
                    return ProfileMenu(
                      menuName: profileMenuList[index].menuName,
                      menuIcon: profileMenuList[index].menuIcon,
                      menuLink: profileMenuList[index].menuLink,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
