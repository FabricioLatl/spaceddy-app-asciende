import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/PropartyFacilityContent.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class PropertyDetailsReviewsList extends StatefulWidget {
  final image;
  final name;
  final date;
  final ratingText;
  final paragraph;
  final hasMargin;
  const PropertyDetailsReviewsList(
    {Key? key,
    this.image = userImage1,
    this.name = '',
    this.date = '',
    this.ratingText = '',
    this.paragraph = '',
    this.hasMargin = false}) : super(key: key);

  @override
  State<PropertyDetailsReviewsList> createState() =>
      _PropertyDetailsReviewsListState();
}

class _PropertyDetailsReviewsListState
    extends State<PropertyDetailsReviewsList> {
  bool likeBtn = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: widget.hasMargin ? EdgeInsets.only(top: 23.h) : EdgeInsets.zero,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 7.h),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      widget.image,
                      width: 40.w,
                      height: 40.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 3.h),
                      child: RichText(
                        text: TextSpan(
                          text: widget.name,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(12, 23, 38, 1),
                          ),
                          children: [
                            TextSpan(
                              text: widget.date,
                              style: const TextStyle(
                                color: Color.fromRGBO(119, 118, 130, 1),
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10.w),
                          child: Text(
                            widget.ratingText,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(12, 23, 38, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14.w,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: index == 0
                                  ? EdgeInsets.zero
                                  : EdgeInsets.only(left: 5.w),
                                child: Image.asset(
                                  starIcon,
                                  width: 14.w,
                                  height: 14.w,
                                  fit: BoxFit.contain,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: widget.paragraph,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(114, 143, 161, 1),
              ),
              children: const [
                TextSpan(
                  text: 'Read More',
                  style: TextStyle(
                    color: Color.fromRGBO(119, 118, 130, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
