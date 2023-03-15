import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/WishlistPropertyList.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(hasBackBtn: true, title: 'Favoritos'),
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
              ListView.builder(
                padding: const EdgeInsets.all(0.0),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: wishlistPropertyList.length,
                itemBuilder: (context, index) {
                  return WishlistPropertyList(
                    propartyImage: wishlistPropertyList[index].propartyImage,
                    propartyName: wishlistPropertyList[index].propartyName,
                    propartyLocation:
                        wishlistPropertyList[index].propartyLocation,
                    propartyRentText:
                        wishlistPropertyList[index].propartyRentText,
                    propartyRatingText:
                        wishlistPropertyList[index].propartyRatingText,
                    facilityList: wishlistPropertyList[index].facilityList,
                    dateText: wishlistPropertyList[index].dateText,
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
