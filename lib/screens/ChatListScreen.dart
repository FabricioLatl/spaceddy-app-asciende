
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/ChatUserList.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/SearchInput.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(
            hasBackBtn: true,
            title: 'Chat',
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: Column(
          children: [
            Container(
              width: size.width,
              padding: EdgeInsets.only(top: 23.h, left: 20.w, right: 20.w),
              child: Row(
                children: const [
                  SearchInput(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: size.height,
                padding: EdgeInsets.only(top: 23.h, left: 20.w, right: 20.w),
                child: ListView.builder(
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.all(0.0),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: chatUserList.length,
                  itemBuilder: (context, index) {
                    return ChatUserList(
                      hasImage: chatUserList[index].hasImage,
                      userImg: chatUserList[index].userImg,
                      userImgText: chatUserList[index].userImgText,
                      userName: chatUserList[index].userName,
                      userLastMsg: chatUserList[index].userLastMsg,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
