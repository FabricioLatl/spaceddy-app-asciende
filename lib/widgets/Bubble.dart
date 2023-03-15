
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/utils/widgetFunctions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bubble extends StatefulWidget {
  final child;
  final bubbleColor;
  final bubbleBorderRadius;
  final double bubbleBorderWidth;
  final bubbleBorderColor;
  final timeTextColor;
  final timeTextAlignment;
  final quickReplayMsg;
  final lastSeenMsg;

  const Bubble({Key? key,
    this.child = '',
    this.bubbleColor,
    this.bubbleBorderRadius,
    this.bubbleBorderWidth = 0,
    this.bubbleBorderColor,
    this.timeTextColor,
    this.timeTextAlignment = CrossAxisAlignment.start,
    this.quickReplayMsg = false,
    this.lastSeenMsg = '',
  }) : super(key: key);

  @override
  State<Bubble> createState() => _BubbleState();
}

class _BubbleState extends State<Bubble> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: widget.bubbleColor,
        borderRadius: widget.bubbleBorderRadius,
        border: Border.all(
          width: widget.bubbleBorderWidth,
          color: widget.bubbleBorderColor,
        )
      ),
      child: Column(
        crossAxisAlignment: widget.timeTextAlignment,
        children: [
          widget.quickReplayMsg ? Padding(
            padding: EdgeInsets.only(top: 10.h, right: 10.w, left: 10.w),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.r),
                topRight: Radius.circular(12.r),
                bottomRight: Radius.circular(12.r),
                bottomLeft: Radius.circular(4.r),
              ),
              child: Container(
                color: const Color.fromRGBO(250, 250, 250, 1),
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 8.h, right: 8.w, bottom: 8.h, left: 12.w),
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 4.h),
                            child: Text(
                              'You',
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(241, 95, 95, 1),
                              ),
                            ),
                          ),
                          Text(
                            'Can I come over?',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(12, 12, 38, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 4.w,
                        height: size.height,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(241, 95, 95, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.r),
                            bottomLeft: Radius.circular(4.r),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ) : const SizedBox(
            width: 0,
            height: 0,
          ),
          widget.child,
          Container(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.w),
            child: Text(
              widget.lastSeenMsg,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: widget.timeTextColor,
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
