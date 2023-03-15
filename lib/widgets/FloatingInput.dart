import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class FloatingInput extends StatefulWidget {
  final labelText;
  final keyBoardType;
  final hasPassword;
  final hasMargin;
  final onTapEvent;
  final readOnlyInput;
  final hasDatePicker;

  const FloatingInput(
      {Key? key,
      this.labelText,
      this.keyBoardType,
      this.hasPassword = false,
      this.hasMargin = true,
      this.onTapEvent = false,
      this.readOnlyInput = false,
      this.hasDatePicker = false})
      : super(key: key);

  @override
  State<FloatingInput> createState() => _FloatingInputState();
}

class _FloatingInputState extends State<FloatingInput> {
  TextEditingController dateinput = TextEditingController();
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: widget.hasMargin ? 20.h : 0.h),
      child: TextField(
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: const Color.fromRGBO(12, 12, 38, 1),
        ),
        cursorColor: const Color.fromRGBO(119, 118, 130, 1),
        keyboardType: widget.keyBoardType,
        obscureText: widget.hasPassword ? !_passwordVisible : false,
        controller: dateinput,
        readOnly: widget.readOnlyInput,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 8.h, bottom: 15.h),
          labelText: widget.labelText,
          labelStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(12, 12, 38, 1),
          ),
          floatingLabelStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(119, 118, 130, 1),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromRGBO(241, 241, 241, 1),
              width: 2.h
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromRGBO(241, 241, 241, 1),
              width: 2.h
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromRGBO(241, 241, 241, 1),
              width: 2.h
            ),
          ),
          suffixIcon: widget.hasPassword
          ? IconButton(
            icon: Image.asset(
              _passwordVisible ? passwordEye : passwordHideEye,
              width: 16.w,
              height: 16.w,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          )
          : Container(width: 0,),
          //  || widget.hasDatePicker ? Image.asset(
          //   notificationGrayIcon
          // ) : Container(),
        ),
        onTap: widget.onTapEvent ? () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1),
            lastDate: DateTime.now(),
            builder: (context, child) {
              return Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: const ColorScheme.light(
                    primary: Color.fromRGBO(241, 95, 95, 1),
                    onPrimary: Colors.white,
                    onSurface: Color.fromRGBO(12, 12, 38, 1),
                  ),
                  textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: const Color.fromRGBO(241, 95, 95, 1),
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                child: child!,
              );
            },
          );
          if (pickedDate != null) {
            String formattedDate = DateFormat('dd MMMM yyy').format(pickedDate);
            setState(() {
              dateinput.text = formattedDate;
            });
          } else {
            print("Date is not selected");
          }
        } : () {},
      ),
    );
  }
}
