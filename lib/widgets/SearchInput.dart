import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchInput extends StatelessWidget {
  final placeholder;
  final onChnageEvent;
  const SearchInput({Key? key, this.placeholder = 'Search', this.onChnageEvent}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Flexible(
      child: SizedBox(
        height: 40.w,
        child: TextField(
          cursorColor: const Color.fromRGBO(119, 118, 130, 1),
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(119, 118, 130, 1),
          ),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 10.w, bottom: 10.w, left: 20.w, right: 22.w),
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(119, 118, 130, 1),
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.sp,
                color: const Color.fromRGBO(232, 232, 232, 1),
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.sp,
                color: const Color.fromRGBO(232, 232, 232, 1),
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.sp,
                color: const Color.fromRGBO(232, 232, 232, 1),
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.sp,
                color: const Color.fromRGBO(232, 232, 232, 1),
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.sp,
                color: const Color.fromRGBO(232, 232, 232, 1),
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            suffixIcon: Container(
              padding: EdgeInsets.all(10.w),
              child: Image.asset(
                searchGrayLine,
                width: 24.w,
                height: 24.w,
              ),
            ),
          ),
          onChanged: onChnageEvent
        ),
      ),
    );
  }
}
