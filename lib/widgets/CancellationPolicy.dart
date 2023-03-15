
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CancellationPolicy extends StatefulWidget {
  final cancellationPolicyHeading;
  const CancellationPolicy({Key? key, this.cancellationPolicyHeading = ''}) : super(key: key);

  @override
  State<CancellationPolicy> createState() => _CancellationPolicyState();
}

class _CancellationPolicyState extends State<CancellationPolicy> {
  bool switchOnOff = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 23.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: CommonHeading(
                  headingText: widget.cancellationPolicyHeading,
                  hasSpacing: false,
                  hasBtn: false,
                  hasMargin: false
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    switchOnOff = !switchOnOff;
                  });
                },
                child: SizedBox(
                  width: 16.w,
                  height: 10.w,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 4,
                        child: Container(
                          width: 16.w,
                          height: 2.h,
                          color: switchOnOff ? const Color.fromRGBO(241, 95, 95, 1) : const Color.fromRGBO(119, 118, 130, 1),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: switchOnOff ? MainAxisAlignment.end : MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 10.w,
                            height: 10.w,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(250, 250, 250, 1),
                              border: Border.all(
                                width: 1.5.w,
                                color: switchOnOff ? const Color.fromRGBO(241, 95, 95, 1) : const Color.fromRGBO(119, 118, 130, 1),
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 15.h),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: const Color.fromRGBO(244, 244, 244, 1),
                width: 2.h,
              ),
            ),
          ),
          child: Column(
            children: [
              Container(
                width: size.width,
                margin: EdgeInsets.only(bottom: 4.h),
                child: Text(
                  'Cancel before 12:00 AM on Oct 15 and get a full refund, minus the first fee.',
                  style: TextStyle(
                    color: const Color.fromRGBO(119, 118, 130, 1),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                width: size.width,
                child: Text(
                  'Learn more',
                  style: TextStyle(
                    color: const Color.fromRGBO(214, 95, 95, 1),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
