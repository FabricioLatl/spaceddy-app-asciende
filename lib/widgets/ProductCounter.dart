
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCounter extends StatefulWidget {
  final initialQuantity;
  final onQuantityChange;

  const ProductCounter({Key? key, this.initialQuantity, this.onQuantityChange}) : super(key: key);

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  int quantity=0;
  bool isSaving = false;

  // void changeQuantity(int newQuantity) async {
  //   setState(() {
  //     isSaving = true;
  //   });
  //   newQuantity = await widget.onQuantityChange(newQuantity) ?? newQuantity;
  //   setState(() {
  //     quantity = newQuantity;
  //     isSaving = false;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            if(quantity>0){
            setState(() {
              quantity=quantity-1;
            });
            }
          },
          child: Image.asset(
            minusIcon,
            width: 20.w,
            height: 20.w,
            fit: BoxFit.contain,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          child: Text(
            quantity.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(12, 12, 38, 1),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
             setState(() {
              quantity = quantity + 1;
            });
          },
          child: Image.asset(
            plusIcon,
            width: 20.w,
            height: 20.w,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
