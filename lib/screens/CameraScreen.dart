
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

import 'package:csc_picker/csc_picker.dart';

import 'dart:io';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  List<CameraDescription>? cameras;
  CameraController? controller;
  XFile? image;
  bool flashOnOff = false;
  @override
  void initState() {
    loadCamera();
    controller?.setFlashMode(FlashMode.torch);
    super.initState();
  }

  loadCamera() async {
    cameras = await availableCameras();
    if (cameras != null) {
      controller = CameraController(cameras![0], ResolutionPreset.max);
      controller!.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    } else {
      print("NO any camera found");
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Header(
            hasBackBtn: true,
            title: '',
            rightIcon: GestureDetector(
              onTap: () {
                setState(() {
                  flashOnOff = !flashOnOff;
                });
                controller?.setFlashMode(flashOnOff ? FlashMode.always : FlashMode.off);
              },
              child: Image.asset(
                flashOnOff ? flashOnIcon : flashOffIcon,
                width: 20.w,
                height: 20.w,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 17.h, left: 20.w, right: 20.w),
          child: Column(
            children: [
              Container(
                height: 340.h,
                width: size.width,
                margin: EdgeInsets.only(bottom: 37.h),
                child: SizedBox(
                  width: size.width,
                  child: CameraPreview(
                    controller!,
                    child: Container(
                      padding: EdgeInsets.all(20.w),
                      child: Image.asset(
                        clickPhotoShap,
                        width: 295.w,
                        height: 295.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 23.h),
                width: size.width,
                child: Text(
                  'Front of ID',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromRGBO(12, 12, 38, 1),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.02.sp,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 37.h),
                child: Text(
                  'Fit the front of your ID within the\nframe - check for good lighting.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromRGBO(119, 118, 130, 1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              GestureDetector(
                onTap: () async {
                  try {
                    if (controller != null) {
                      if (controller!.value.isInitialized) {
                        image = await controller!.takePicture();
                        setState(() {
                        });
                      }
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                child: Container(
                  width: 70.w,
                  height: 70.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(70.r),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(241, 95, 95, 0.18),
                        offset: Offset(0, 10),
                        blurRadius: 20,
                      ),
                    ],
                    border: Border.all(
                      color: const Color.fromRGBO(241, 95, 95, 1),
                      width: 15.w,
                    ),
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
