import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/constants/SampleData.dart';
import 'package:flutter_ready_rental/widgets/CommonBtn.dart';
import 'package:flutter_ready_rental/widgets/CommonRadioList.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;

import 'package:csc_picker/csc_picker.dart';

class IdentityVerificationScreen extends StatefulWidget {
  const IdentityVerificationScreen({Key? key}) : super(key: key);

  @override
  State<IdentityVerificationScreen> createState() =>
      _IdentityVerificationScreenState();
}

class _IdentityVerificationScreenState
    extends State<IdentityVerificationScreen> {
  /// Variables to store country state city data in onChanged method.
  String countryValue = '';
  String stateValue = '';
  String cityValue = '';
  String address = '';
  GlobalKey<CSCPickerState> _cscPickerKey = GlobalKey();
  bool radioBtnClick = false;
  bool _value = false;
  String? val;

  String? proofId;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(hasBackBtn: true, title: 'Identity Verification'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 17.h, left: 20.w, right: 20.w),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 23.h),
                width: size.width,
                child: Text(
                  'Choose an ID type to add',
                  style: TextStyle(
                    color: const Color.fromRGBO(33, 37, 41, 1),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.02.sp,
                  ),
                ),
              ),
              SizedBox(
                width: size.width,
                child: Text(
                  'Issuing country/region',
                  style: TextStyle(
                    color: const Color.fromRGBO(119, 118, 130, 1),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              CSCPicker(
                showStates: false,
                showCities: false,
                flagState: CountryFlag.DISABLE,
                dropdownDecoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color.fromRGBO(244, 244, 244, 1),
                      width: 2.h,
                    ),
                  ),
                ),
                disabledDropdownDecoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color.fromRGBO(241, 241, 241, 1),
                      width: 2.h,
                    ),
                  ),
                ),
                countrySearchPlaceholder: "Country",
                selectedItemStyle: TextStyle(
                  color: const Color.fromRGBO(12, 12, 38, 1),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                dropdownHeadingStyle: TextStyle(
                  color: const Color.fromRGBO(33, 37, 41, 1),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.02.sp,
                ),
                dropdownItemStyle: TextStyle(
                  color: const Color.fromRGBO(12, 12, 38, 1),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                currentCountry: 'India',
                dropdownDialogRadius: 10.r,
                searchBarRadius: 12.r,
                onCountryChanged: (value) {
                  setState(() {
                    countryValue = value;
                  });
                },
              ),

              Container(
                margin: EdgeInsets.only(bottom: 37.h),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: selectIdProofList.length,
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
                          selectIdProofList[index].idProofName,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color.fromRGBO(12, 12, 38, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        value: selectIdProofList[index].radioValue,
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
                  },
                ),
              ),
              Text(
                'We take steps to help ensure this info stays private.\nLearn more in our Privacy Policy.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(119, 118, 130, 1),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 165.w,
                child: CommonBtn(
                  btnText: 'Continue',
                  hasSpacing: EdgeInsets.only(top: 37.h),
                  hasNavigat: true,
                  routeName: route.kCameraScreenRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
