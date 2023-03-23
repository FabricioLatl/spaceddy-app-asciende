import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_ready_rental/routes/Routes.dart' as route;

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _current = 0;

  final CarouselController _controller = CarouselController();
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 70.h),
            child: Column(
              children: [
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    height: size.height - 227.h,
                    autoPlay: false,
                    enlargeCenterPage: false,
                    viewportFraction: 1,
                    aspectRatio: 1.0,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                  items: welcomeList.map((item) {
                    return Builder(
                      builder: (context) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10.h),
                              child: Text(
                                item.heading,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(12, 12, 38, 1),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              margin: EdgeInsets.only(bottom: 67.h),
                              child: Text(
                                item.paragraph,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(119, 118, 130, 1),
                                ),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                item.image,
                                fit: BoxFit.contain,
                                width: size.width,
                                // height: 307.h,
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }).toList(),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Row(
                    mainAxisAlignment: _current == 0
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.spaceBetween,
                    children: [
                      _current == 0
                          ? Container()
                          : Container(
                              width: 50.w,
                              height: 50.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.r),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.03),
                                    offset: Offset(0, 10),
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () => _controller.previousPage(),
                                icon: Icon(
                                  Icons.chevron_left_rounded,
                                  size: 32.w,
                                  color: const Color.fromRGBO(119, 118, 130, 1),
                                ),
                              ),
                            ),
                      TextButton(
                        onPressed: () => _current == 2
                            ? Navigator.pushNamed(
                                context, route.kSignupScreenRoute)
                            : _controller.nextPage(),
                        style: TextButton.styleFrom(
                            primary: const Color.fromRGBO(12, 12, 38, 1),
                            padding: EdgeInsets.only(
                                top: 13.h,
                                bottom: 14.h,
                                right: 14.w,
                                left: 14.w),
                            minimumSize: Size(165.w, 50.w),
                            backgroundColor:
                                const Color.fromRGBO(247, 127, 0, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            elevation: 8,
                            shadowColor:
                                const Color.fromRGBO(241, 95, 95, 0.18)),
                        child: Text(
                          _current == 2 ? 'Empezar' : 'Siguiente',
                          style: TextStyle(
                              color: const Color.fromRGBO(250, 250, 250, 1),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.002.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
