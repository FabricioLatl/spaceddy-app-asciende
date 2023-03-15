import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/CurrentLocationSearchResult.dart';
import 'package:flutter_ready_rental/widgets/GoogleMapPage.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/SearchInput.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentLocationScreen extends StatefulWidget {
  const CurrentLocationScreen({Key? key}) : super(key: key);

  @override
  State<CurrentLocationScreen> createState() => _CurrentLocationScreenState();
}

class _CurrentLocationScreenState extends State<CurrentLocationScreen> {
  var searchResult = '';
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(
            hasBackBtn: true,
            title: 'Current Location',
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 23.h),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      margin: EdgeInsets.only(bottom: 33.h),
                      child: Row(
                        children: [
                          SearchInput(
                            placeholder: 'Search your location',
                            onChnageEvent: (text) {
                              setState(() {
                                searchResult = text;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   width: size.width,
                    //   height: size.height,
                    //   child: const GoogleMapPage(),
                    // ),
                    const Expanded(
                      child: GoogleMapPage(),
                    ),
                  ],
                ),
                searchResult.trim().isNotEmpty
                  ? Positioned(
                    top: 73.h,
                    width: size.width,
                    height: size.height,
                    child: Container(
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 23.h),
                            child: Text(
                              'Recent Search',
                              style: TextStyle(
                                color: const Color.fromRGBO(12, 12, 38, 1),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.02.sp
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                            child: ListView.builder(
                              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                              padding: const EdgeInsets.all(0.0),
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: currentLocationResultList.length,
                              itemBuilder: (context, index) {
                                return CurrentLocationSearchResult(
                                  locationAddress: currentLocationResultList[index].locationAddress,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
