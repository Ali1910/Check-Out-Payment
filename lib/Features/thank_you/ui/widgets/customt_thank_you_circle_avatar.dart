import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomtThankYouCircleAvatar extends StatelessWidget {
  const CustomtThankYouCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 17.5.w,
      backgroundColor: Colors.white,
    );
  }
}
