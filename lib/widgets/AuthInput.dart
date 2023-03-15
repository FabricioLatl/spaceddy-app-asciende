
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthInput extends StatefulWidget {
  final placeholder;
  final keyBoardType;
  final hasPassword;
  final hasMargin;

  const AuthInput({Key? key, this.placeholder, this.keyBoardType, this.hasPassword = false, this.hasMargin = true}) : super(key: key);

  @override
  State<AuthInput> createState() => _AuthInputState();
}

class _AuthInputState extends State<AuthInput> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: widget.hasMargin ? 20.h : 0.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: TextField(
          cursorColor: const Color.fromRGBO(119, 118, 130, 1),
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(119, 118, 130, 1),
          ),
          keyboardType: widget.keyBoardType,
          obscureText: _passwordVisible,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 14.w, bottom: 9.w, left: 22.w, right: 22.w),
            hintText: widget.placeholder,
            hintStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(119, 118, 130, 1),
            ),
            suffixIcon: widget.hasPassword ? IconButton(
              icon: Image.asset(
                _passwordVisible ? passwordHideEye : passwordEye,
                width: 16.w,
                height: 16.w,
              ),
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ) : SizedBox(width: 0.w, height: 0.w,),
            filled: true,
            fillColor: Colors.white,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
