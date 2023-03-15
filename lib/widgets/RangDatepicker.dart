
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'package:intl/intl.dart';
import 'package:flutter/scheduler.dart';

class RangDatepicker extends StatefulWidget {
  const RangDatepicker({Key? key}) : super(key: key);

  @override
  State<RangDatepicker> createState() => _RangDatepickerState();
}

class _RangDatepickerState extends State<RangDatepicker> {
  DateRangePickerController _datePickerController = DateRangePickerController();
  String datePicker = '';
  String headerString = '';
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 23.h, bottom: 33.h, left: 20.w, right: 20.w),
          margin: EdgeInsets.only(bottom: 33.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: const Color.fromRGBO(255, 240, 240, 1),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 23.h),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 8.h),
                            child: Text(
                              'Check In',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromRGBO(119, 118, 130, 1),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            'Thu 1 Jul 2021',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color.fromRGBO(12, 12, 38, 1),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 8.h),
                            child: Text(
                              'Check Out',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromRGBO(119, 118, 130, 1),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            'Sat 31 Jul 2021',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color.fromRGBO(12, 12, 38, 1),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Image.asset(
                      arrowLeftCircleIcon,
                      width: 20.w,
                      height: 20.w,
                      fit: BoxFit.contain,
                    ),
                    onPressed: () {
                      _datePickerController.backward!();
                    },
                  ),
                  Text(
                    headerString,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color.fromRGBO(12, 12, 38, 1),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PlusJakartaSans',
                    ),
                  ),
                  IconButton(
                    icon: Image.asset(
                      arrowRightCircleIcon,
                      width: 20.w,
                      height: 20.w,
                      fit: BoxFit.contain,
                    ),
                    onPressed: () {
                      _datePickerController.forward!();
                    },
                  ),
                ],
              ),
              SfDateRangePicker(
                controller: _datePickerController,
                view: DateRangePickerView.month,
                headerHeight: 0,
                onViewChanged: viewChanged,
                monthViewSettings: DateRangePickerMonthViewSettings(
                  showTrailingAndLeadingDates: true,
                  viewHeaderStyle: DateRangePickerViewHeaderStyle(
                    textStyle: TextStyle(
                      color: const Color.fromRGBO(12, 12, 38, 1),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'PlusJakartaSans',
                    ),
                  ),
                  dayFormat: 'EEE',
                ),
                allowViewNavigation: false,
                showNavigationArrow: false,
                yearCellStyle: DateRangePickerYearCellStyle(
                  textStyle: TextStyle(
                    color: const Color.fromRGBO(12, 12, 18, 1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'PlusJakartaSans',
                  ),
                  todayTextStyle: TextStyle(
                    color: const Color.fromRGBO(250, 250, 250, 1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'PlusJakartaSans',
                  ),
                  todayCellDecoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color.fromRGBO(241, 95, 95, 1),
                    border: Border.all(
                      width: 3.sp,
                      color: const Color.fromRGBO(250, 250, 250, 1),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(241, 95, 95, 0.18),
                        offset: Offset(0, 10),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                ),
                selectionMode: DateRangePickerSelectionMode.range,
                selectionTextStyle: const TextStyle(color: Colors.white),
                selectionColor: const Color.fromRGBO(241, 95, 95, 1),
                startRangeSelectionColor: const Color.fromRGBO(241, 95, 95, 1),
                endRangeSelectionColor: const Color.fromRGBO(241, 95, 95, 1),
                rangeSelectionColor: const Color.fromRGBO(241, 95, 95, 0.5),
                rangeTextStyle: TextStyle(
                  color: const Color.fromRGBO(250, 250, 250, 1),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'PlusJakartaSans',
                ),
                headerStyle: DateRangePickerHeaderStyle(
                  textAlign: TextAlign.center,
                  textStyle: TextStyle(
                    color: const Color.fromRGBO(12, 12, 38, 1),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'PlusJakartaSans',
                  ),
                ),
                monthCellStyle: DateRangePickerMonthCellStyle(
                  textStyle: TextStyle(
                    color: const Color.fromRGBO(12, 12, 18, 1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'PlusJakartaSans',
                  ),
                  trailingDatesTextStyle: TextStyle(
                    color: const Color.fromRGBO(119, 118, 130, 1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'PlusJakartaSans',
                  ),
                  todayTextStyle: TextStyle(
                    color: const Color.fromRGBO(12, 12, 18, 1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'PlusJakartaSans',
                  ),
                  todayCellDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1.sp,
                      color: const Color.fromRGBO(241, 95, 95, 1),
                    ),
                  ),
                ),
              ),
              Container(
                width: 165.w,
                margin: EdgeInsets.only(top: 33.h),
                child: const CommonBtn(
                  btnText: 'Apply',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void viewChanged(DateRangePickerViewChangedArgs args) {
    var currentDate= DateTime.now();
    final DateTime visibleStartDate = args.visibleDateRange.startDate!;
    final DateTime visibleEndDate = args.visibleDateRange.endDate!;
    final int totalVisibleDays =
        (visibleStartDate.difference(visibleEndDate).inDays);
    final DateTime midDate =
        visibleStartDate.add(Duration(days: totalVisibleDays~/2 + DateTime(currentDate.year, currentDate.month + 1, 0).day));
    headerString = DateFormat('MMMM yyyy').format(midDate).toString();
    SchedulerBinding.instance.addPostFrameCallback((duration) {
      setState(() {});
    });
  }
}