import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/widgets/CommonHeading.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsServiceScreen extends StatefulWidget {
  const TermsServiceScreen({Key? key}) : super(key: key);

  @override
  State<TermsServiceScreen> createState() => _TermsServiceScreenState();
}

class _TermsServiceScreenState extends State<TermsServiceScreen> {
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
            title: 'Terms of Service',
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
                headingText: 'Terms of service for non-indian users',
                hasSpacing: false,
                hasBtn: false,
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(bottom: 8.h),
                child: RichText(
                  text: TextSpan(
                    text: 'Lorem ipsum dolor sit amet, consectetur adipiscin elit. Cras felis orci, tempor in dui nec, rhoncus mole sem. Proin sit amet ex pretium nulla condimentum cursus id vitae ipsum. Nam at nisi nec orci volutpat bibendum. Nullam leo lacus, elementum id elemen vel, hendrerit id lectus. Curabitur at placerat orci, id tincidunt justo. Etiam in cursus elit, vel aliquet lectu. ',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(119, 118, 130, 1),
                    ),
                    children: const [
                      TextSpan(
                        text: 'Aliquam volutpat ',
                        style: TextStyle(
                          color: Color.fromRGBO(241, 95, 95, 1),
                        ),
                      ),
                      TextSpan(
                        text: 'mi sed urna pulvinar, ac venenatis libero faucibus. Integer eleifend lorem eu elementu pulvinar. Mauris in quam eget dolor vehicula dapibu sed vel tellus. Nam '),
                      TextSpan(
                        text: 'maximus ',
                        style: TextStyle(
                          color: Color.fromRGBO(241, 95, 95, 1),
                        ),
                      ),
                      TextSpan(
                        text: 'odio augue, a sagittise augue accumsan at. Mauris suscipit commodo laci In vitae eros dictum, interdum mauris ac.'),
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(bottom: 8.h),
                child: RichText(
                  text: TextSpan(
                    text: 'Lorem ipsum dolor sit amet, consectetur adipiscin elit. Cras felis orci, tempor in dui nec, rhoncus mole sem. Proin sit amet ex pretium nulla condimentum cursus id vitae ipsum. Nam at nisi nec orci volutpat bibendum. Nullam leo lacus, elementum id ',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(119, 118, 130, 1),
                    ),
                    children: const [
                      TextSpan(
                        text: 'elemen ',
                        style: TextStyle(
                          color: Color.fromRGBO(241, 95, 95, 1),
                        ),
                      ),
                      TextSpan(
                        text: 'vel, hendrerit id lectus.',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: size.width,
                child: RichText(
                  text: TextSpan(
                    text: 'Lorem ipsum dolor sit amet, consectetur adipiscin elit. Cras felis orci, tempor in dui nec, rhoncus mole sem. Proin sit amet ex pretium nulla condimentum cursus id vitae ipsum. Nam at nisi nec orci volutpat bibendum. Nullam leo lacus, elementum id elemen vel, hendrerit id lectus. Curabitur at placerat orci, id tincidunt justo. ',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(119, 118, 130, 1),
                    ),
                    children: const [
                      TextSpan(
                        text: 'Etiam ',
                        style: TextStyle(
                          color: Color.fromRGBO(241, 95, 95, 1),
                        ),
                      ),
                      TextSpan(
                        text: 'in cursus elit, vel aliquet lectu. Aliquam volutpat mi sed urna pulvinar, ac venenatis libero faucibus. Integer eleifend lorem eu elementu pulvinar. Mauris in quam eget dolor vehicula dapibu sed vel tellus. Nam maximus odio augue, a sagittise augue accumsan at. Mauris suscipit commodo laci In vitae eros dictum, interdum mauris ac.',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
