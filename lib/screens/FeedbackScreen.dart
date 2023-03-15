import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/BrowseAllTopicsList.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/RecommendedArticlesList.dart';
import 'package:flutter_ready_rental/widgets/SearchInput.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
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
            title: 'Feedback',
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(top: 23.h, left: 20.w, right: 20.w, bottom: 30.h),
          child: Column(
            children: [
              const CommonHeading(
                headingText: 'How are we doing?',
                hasSpacing: false,
                hasBtn: false,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 23.h),
                child: Text(
                  'We’re always working to improve  the ready rental experience, so we’d love to hear what’s working and how we can do better.',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(119, 118, 130, 1),
                  ),
                ),
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(bottom: 33.h),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(119, 118, 130, 1),
                    ),
                    children: const [
                      TextSpan(
                        text: 'This isn’t a way to contact us, though.\n',
                        style: TextStyle(
                          color: Color.fromRGBO(12, 12, 38, 1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'We can’t respond to feedback or bug reports individually. If you have a question or need help resolving a problem, you’ll find answers in our ',
                      ),
                      TextSpan(
                        text: 'Help Center, ',
                        style: TextStyle(
                          color: Color.fromRGBO(241, 95, 95, 1),
                        ),
                      ),
                      TextSpan(
                        text: 'or you can ',
                      ),
                      TextSpan(
                        text: 'contact us. ',
                        style: TextStyle(
                          color: Color.fromRGBO(241, 95, 95, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const CommonHeading(
                headingText: 'What would you like to do?',
                hasSpacing: false,
                hasBtn: false,
              ),
              ListView.builder(
                padding: const EdgeInsets.all(0.0),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: whatWouldLikeList.length,
                itemBuilder: (context, index) {
                  return BrowseAllTopicsList(
                    browseAllTopicsText: whatWouldLikeList[index].browseAllTopicsText,
                    icon: whatWouldLikeList[index].icon,
                    hasMargin: true,
                    bottomMargin: index == 1
                        ? EdgeInsets.only(bottom: 0.h)
                        : EdgeInsets.only(bottom: 23.h),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
