import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileMenu extends StatelessWidget {
  final menuName;
  final menuIcon;
  final menuLink;
  const ProfileMenu({Key? key, this.menuName = '', this.menuIcon = myPropertyIcon, this.menuLink = null}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, menuLink);
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 15.h),
        margin: EdgeInsets.only(bottom: 20.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: const Color.fromRGBO(224, 224, 224, 0.4),
              width: 2.h,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                menuName,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(12, 12, 38, 1),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Image.asset(
                menuIcon,
                width: 20.w,
                height: 20.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
