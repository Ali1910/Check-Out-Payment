import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50.w,
      backgroundColor: const Color(0xffEDEDED),
      child: CircleAvatar(
        radius: 40.w,
        backgroundColor: const Color(0xff34A853),
        child: const Icon(
          Icons.check,
          size: 50,
        ),
      ),
    );
  }
}
