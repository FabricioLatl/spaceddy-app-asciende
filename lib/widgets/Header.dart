import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  final title;
  final hasBackBtn;
  final rightIcon;
  const Header({Key? key,
    this.title,
    this.hasBackBtn = false,
    this.rightIcon})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // systemOverlayStyle: SystemUiOverlayStyle.dark,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(250, 250, 250, 1),
        statusBarIconBrightness: Brightness.dark
      ),
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      elevation: 0,
      centerTitle: true,
      leading: hasBackBtn
      ? GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              SizedBox(
                width: 20.w,
                height: 20.w,
                child: Image.asset(
                  backIcon,
                  width: 11.w,
                  height: 18.h,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        )
      : Container(),
      titleSpacing: 0.0,
      title: Text(
        title,
        overflow: TextOverflow.visible,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: const Color.fromRGBO(12, 12, 38, 1),
          letterSpacing: -0.02.sp,
        ),
      ),
      actions: [
        rightIcon ?? SizedBox(
          width: 20.w,
          height: 20.w,
        ),
      ],
    );
  }
}
