
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonImageBtn extends StatelessWidget {
  final btnText;
  final btnImage;
  final hasSpacing;
  const CommonImageBtn({Key? key, this.btnText, this.btnImage, this.hasSpacing = const EdgeInsets.all(0)}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: hasSpacing,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          primary: const Color.fromRGBO(12, 12, 38, 1),
          padding: EdgeInsets.all(10.w),
          backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 17.w),
              child: Image.asset(
                btnImage,
                height: 30.w,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              btnText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(12, 12, 38, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
