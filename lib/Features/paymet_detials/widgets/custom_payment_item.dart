import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomPaymentItem extends StatelessWidget {
  const CustomPaymentItem({
    super.key,
    this.isactive = false,
    required this.imageUrl,
  });
  final bool isactive;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 600),
      margin: EdgeInsetsDirectional.only(start: 20.w),
      width: 103.w,
      height: 62.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.50.h,
            color: isactive ? const Color(0xff34a853) : const Color(0xff808080),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
              color: isactive ? const Color(0xff34a853) : Colors.white,
              blurRadius: 4,
              offset: const Offset(0, 0),
              spreadRadius: 0)
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: SvgPicture.asset(
            imageUrl,
            height: 30,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
