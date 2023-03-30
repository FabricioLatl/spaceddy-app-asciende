import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class RangSlider extends StatefulWidget {
  const RangSlider({Key? key}) : super(key: key);

  @override
  State<RangSlider> createState() => _RangSliderState();
}

class _RangSliderState extends State<RangSlider> {
  bool dropDown = true;
  SfRangeValues _value = const SfRangeValues(150.0, 900.0);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 33.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: dropDown ? 23.h : 0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Price por mes',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.02.sp,
                      color: const Color.fromRGBO(12, 12, 38, 1),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      dropDown = !dropDown;
                    });
                  },
                  child: Image.asset(
                    dropDown ? bottomGrayIcon : rightGrayIcon,
                    width: 15.w,
                    height: 15.w,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ),
          dropDown
              ? SfRangeSliderTheme(
                  data: SfRangeSliderThemeData(
                    thumbColor: Colors.white,
                    thumbRadius: 14.w,
                    thumbStrokeWidth: 4.w,
                    thumbStrokeColor: Colors.white,
                    tooltipBackgroundColor:
                        const Color.fromRGBO(241, 95, 95, 1),
                    tooltipTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  child: SfRangeSlider(
                    min: 0.0,
                    max: 1000.0,
                    values: _value,
                    interval: 900,
                    showTicks: false,
                    showLabels: false,
                    enableTooltip: true,
                    minorTicksPerInterval: 1,
                    activeColor: const Color.fromRGBO(241, 95, 95, 1),
                    inactiveColor: const Color.fromRGBO(225, 240, 240, 1),
                    onChanged: (SfRangeValues newValue) {
                      setState(() {
                        _value = newValue;
                      });
                    },
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
