import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/SearchInput.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectPreferredLanguageScreen extends StatefulWidget {
  const SelectPreferredLanguageScreen({Key? key}) : super(key: key);

  @override
  State<SelectPreferredLanguageScreen> createState() => _SelectPreferredLanguageScreenState();
}

class _SelectPreferredLanguageScreenState extends State<SelectPreferredLanguageScreen> {
  var searchResult = '';
  String? proofId;
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
            title: 'Select Preferred Language',
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.only(top: 23.h, left: 20.w, right: 20.w, bottom: 15.h),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 23.h),
                child: Row(
                  children: const [
                    SearchInput(
                      placeholder: 'Search language',
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: languageList.length,
                  itemBuilder: (ctx, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: const Color.fromRGBO(244, 244, 244, 1),
                            width: 2.h,
                          ),
                        ),
                      ),
                      child: RadioListTile<String>(
                        title: Text(
                          languageList[index].languageName,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color.fromRGBO(12, 12, 38, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        value: languageList[index].radioValue,
                        groupValue: proofId,
                        controlAffinity: ListTileControlAffinity.trailing,
                        activeColor: const Color.fromRGBO(241, 95, 95, 1),
                        contentPadding: EdgeInsets.zero,
                        onChanged: (value) {
                          setState(() {
                            proofId = value.toString();
                          });
                        },
                      ),
                    );
                  }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
