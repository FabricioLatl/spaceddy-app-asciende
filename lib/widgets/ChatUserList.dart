import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class ChatUserList extends StatefulWidget {
  final hasImage;
  final userImg;
  final userImgText;
  final userName;
  final userLastMsg;
  const ChatUserList({Key? key, this.hasImage = true, this.userImg = chatUser1, this.userImgText = '', this.userName = '', this.userLastMsg = ''}): super(key: key);

  @override
  State<ChatUserList> createState() => _ChatUserListState();
}

class _ChatUserListState extends State<ChatUserList> {
  String? proofId;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route.kChatDetailScreenRoute);
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 14.h, top: 4.h, right: 4.w, left: 4.w),
        margin: EdgeInsets.only(bottom: 17.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: const Color.fromRGBO(244, 244, 244, 1),
              width: 2.h,
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 19.w),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(241, 95, 95, 1),
                borderRadius: BorderRadius.circular(12.r),
              ),
              width: 48.w,
              height: 48.w,
              child: widget.hasImage ? ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  widget.userImg,
                  width: 48.w,
                  height: 48.w,
                  fit: BoxFit.cover,
                ),
              ) : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.userImgText,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: 'Lato'
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 4.w),
                    child: Text(
                      widget.userName,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(12, 12, 38, 1),
                      ),
                    ),
                  ),
                  Text(
                    widget.userLastMsg,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(119, 118, 130, 1),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
