import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/routes/Routes.dart' as route;
import 'package:flutter_ready_rental/widgets/HomePageFlatsTab.dart';
import 'package:flutter_ready_rental/widgets/HomePageTab.dart';
import 'package:flutter_ready_rental/widgets/SearchInput.dart';
import 'package:flutter_ready_rental/widgets/TabBarDotIndicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Container(
          color: const Color.fromRGBO(250, 250, 250, 1),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                margin: EdgeInsets.only(bottom: 23.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, route.kCurrentLocationScreenRoute);
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            locationRedIcon,
                            width: 20.w,
                            height: 20.w,
                            fit: BoxFit.contain,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 3.w),
                            child: Text(
                              'Ciudad Actual',
                              style: TextStyle(
                                color: const Color.fromRGBO(12, 12, 38, 1),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 42.w,
                      height: 42.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42.r),
                        color: const Color.fromRGBO(253, 231, 231, 1),
                      ),
                      child: IconButton(
                        color: const Color.fromRGBO(253, 231, 231, 1),
                        icon: Image.asset(
                          userImage,
                          width: 32.w,
                          height: 32.w,
                          fit: BoxFit.contain,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, route.kProfileScreenRoute);
                        },
                        padding: EdgeInsets.zero,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                margin: EdgeInsets.only(bottom: 23.h),
                child: Row(
                  children: [
                    const SearchInput(),
                    Container(
                      margin: EdgeInsets.only(left: 26.w),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, route.kNotificationScreenRoute);
                        },
                        padding: EdgeInsets.zero,
                        icon: Stack(
                          children: [
                            Container(
                              width: 40.w,
                              height: 40.w,
                              padding: EdgeInsets.all(8.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color.fromRGBO(232, 232, 232, 1),
                                ),
                              ),
                              child: Image.asset(
                                notificationGrayIcon,
                                width: 24.w,
                                height: 24.w,
                              ),
                            ),
                            Positioned(
                              top: 7.w,
                              right: 10.w,
                              child: Container(
                                width: 10.w,
                                height: 10.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: const Color.fromRGBO(243, 97, 97, 1),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
                child: TabBar(
                  indicator: DotIndicator(
                    color: const Color.fromRGBO(247, 127, 0, 1),
                    distanceFromCenter: 16,
                    radius: 3,
                    paintingStyle: PaintingStyle.fill,
                  ),
                  labelColor: const Color.fromRGBO(247, 127, 0, 1),
                  unselectedLabelColor: const Color.fromRGBO(119, 118, 130, 1),
                  labelStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(247, 127, 0, 1),
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(119, 118, 130, 1),
                  ),
                  labelPadding: EdgeInsets.symmetric(horizontal: 5.w),
                  tabs: const [
                    Tab(
                      text: 'Casas',
                    ),
                    Tab(
                      text: 'Departamentos',
                    ),
                    Tab(
                      text: 'Terrenos',
                    ),
                    Tab(
                      text: 'Extra',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 25.h),
                  child: const TabBarView(
                    children: [
                      HomePageTab(),
                      HomePageFlatsTab(),
                      HomePageTab(),
                      HomePageTab(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
