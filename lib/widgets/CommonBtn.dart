import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonBtn extends StatelessWidget {
  final btnText;
  final hasSpacing;
  final hasNavigat;
  final routeName;
  final onPress;
  const CommonBtn(
      {Key? key,
      this.btnText,
      this.hasSpacing = const EdgeInsets.all(0),
      this.hasNavigat = false,
      this.routeName,
      this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: hasSpacing,
      child: TextButton(
        onPressed: () {
          hasNavigat ? Navigator.pushNamed(context, routeName) : null;
          onPress;
        },
        style: TextButton.styleFrom(
          primary: const Color.fromRGBO(12, 12, 38, 1),
          padding:
              EdgeInsets.only(top: 13.h, bottom: 14.h, right: 14.w, left: 14.w),
          backgroundColor: const Color.fromRGBO(13, 220, 132, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          elevation: 10,
          shadowColor: const Color.fromRGBO(241, 95, 95, 0.18),
        ),
        child: SizedBox(
          width: size.width,
          child: Text(
            btnText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
