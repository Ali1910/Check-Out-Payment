import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThankYouContainer extends StatelessWidget {
  const ThankYouContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 672.h,
      width: 350.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(20),
        color: const Color(0xffD9D9D9),
      ),
    );
  }
}
