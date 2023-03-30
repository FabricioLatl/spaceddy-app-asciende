import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/AuthInput.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/FloatingInput.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_ready_rental/widgets/ProfileMenu.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ready_rental/routes/Routes.dart' as route;

import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

// import 'dart:async';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  File? _image;
  final picker = ImagePicker();

  _getImage(ImageSource imageSource) async {
    PickedFile? imageFile = await picker.getImage(source: imageSource);
    if (imageFile == null) return;
    setState(
      () {
        _image = File(imageFile.path);
      },
    );
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
          child: const Header(hasBackBtn: true, title: 'Editar Perfil'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.only(top: 17.h, left: 40.w, right: 40.w),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 33.h),
                child: Stack(
                  children: [
                    Container(
                      width: 110.w,
                      height: 110.w,
                      padding: EdgeInsets.all(_image != null ? 0.w : 15.w),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(253, 231, 231, 1),
                        borderRadius: BorderRadius.circular(110.r),
                      ),
                      child: _image != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(110.r),
                              child: Image.file(
                                _image!,
                                width: size.width,
                                height: size.height,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Image.asset(
                              userImage,
                              width: size.width,
                              height: size.height,
                              fit: BoxFit.contain,
                            ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () => _getImage(ImageSource.gallery),
                        child: Image.asset(
                          editGrayLineIcon,
                          width: 20.w,
                          height: 20.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const FloatingInput(
                labelText: 'Nombre Completo',
                hasPassword: false,
                keyBoardType: TextInputType.text,
              ),
              const FloatingInput(
                labelText: 'Correo Electrónico',
                hasPassword: false,
                keyBoardType: TextInputType.emailAddress,
              ),
              const FloatingInput(
                labelText: 'Numero de Teléfono',
                hasPassword: false,
                keyBoardType: TextInputType.number,
              ),
              const FloatingInput(
                labelText: 'Fecha de nacimiento',
                hasPassword: false,
                readOnlyInput: true,
                onTapEvent: true,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, route.kAddIdentityScreenRoute);
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 15.h),
                  margin: EdgeInsets.only(bottom: 20.h),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: const Color.fromRGBO(241, 241, 241, 1),
                        width: 2.h,
                      ),
                    ),
                  ),
                  child: Row(children: [
                    Expanded(
                      child: Text(
                        'DNI',
                        style: TextStyle(
                          color: const Color.fromRGBO(119, 118, 130, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15.w),
                      child: Image.asset(
                        rightGrayIcon,
                        width: 20.w,
                        height: 20.w,
                        fit: BoxFit.contain,
                      ),
                    )
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context, route.kEmergencyContactScreenRoute);
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 15.h),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: const Color.fromRGBO(241, 241, 241, 1),
                        width: 2.h,
                      ),
                    ),
                  ),
                  child: Row(children: [
                    Expanded(
                      child: Text(
                        'Numero de Contacto',
                        style: TextStyle(
                          color: const Color.fromRGBO(119, 118, 130, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15.w),
                      child: Image.asset(
                        rightGrayIcon,
                        width: 20.w,
                        height: 20.w,
                        fit: BoxFit.contain,
                      ),
                    )
                  ]),
                ),
              ),
              SizedBox(
                width: 165.w,
                child: CommonBtn(
                  btnText: 'Guardar Cambios',
                  hasSpacing: EdgeInsets.only(top: 37.h),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
