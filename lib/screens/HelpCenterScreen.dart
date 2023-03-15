
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/BrowseAllTopicsList.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/RecommendedArticlesList.dart';
import 'package:flutter_ready_rental/widgets/SearchInput.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(
            hasBackBtn: true,
            title: 'Help Center',
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.only(top: 23.h, left: 20.w, right: 20.w, bottom: 30.h),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 23.h),
                child: Row(
                  children: const [
                    SearchInput(
                      placeholder: 'Search help articles',
                    ),
                  ],
                ),
              ),
              const CommonHeading(
                headingText: 'Recommended articles',
                hasSpacing: false,
                hasBtn: false,
              ),
              ListView.builder(
                padding: const EdgeInsets.all(0.0),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: recommendedArticlesList.length,
                itemBuilder: (context, index) {
                  return RecommendedArticlesList(
                    recommendedArticlesText: recommendedArticlesList[index].recommendedArticlesText,
                    hasMargin: true,
                    bottomMargin: index == 3
                    ? EdgeInsets.only(bottom: 33.h)
                    : EdgeInsets.only(bottom: 23.h),
                  );
                },
              ),
              const CommonHeading(
                headingText: 'Browse all topics',
                hasSpacing: false,
                hasBtn: false,
              ),
              ListView.builder(
                padding: const EdgeInsets.all(0.0),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: browseAllTopicsList.length,
                itemBuilder: (context, index) {
                  return BrowseAllTopicsList(
                    browseAllTopicsText: browseAllTopicsList[index].browseAllTopicsText,
                    icon: browseAllTopicsList[index].icon,
                    hasMargin: true,
                    bottomMargin: index == 6
                    ? EdgeInsets.only(bottom: 33.h)
                    : EdgeInsets.only(bottom: 23.h),
                  );
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Still need help?',
                      style: TextStyle(
                        color: const Color.fromRGBO(12, 12, 38, 1),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.02.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 165.w,
                    child: const CommonBtn(
                      btnText: 'Contact us',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
