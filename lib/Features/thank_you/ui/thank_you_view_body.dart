import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/Features/thank_you/ui/widgets/custom_check_icon.dart';
import 'package:payment/Features/thank_you/ui/widgets/custom_dashed_line.dart';
import 'package:payment/Features/thank_you/ui/widgets/customt_thank_you_circle_avatar.dart';
import 'package:payment/Features/thank_you/ui/widgets/thank_you_container.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouContainer(),
          Positioned(
            right: 23.5.w,
            left: 23.5.w,
            bottom: 217.5.h,
            child: const CustomDashedLine(),
          ),
          Positioned(
              bottom: 200.h,
              left: -17.5.w,
              child: const CustomtThankYouCircleAvatar()),
          Positioned(
            bottom: 200.h,
            right: -17.5.w,
            child: const CustomtThankYouCircleAvatar(),
          ),
          Positioned(
            left: 0,
            top: -50.h,
            right: 0,
            child: const CustomCheckIcon(),
          )
        ],
      ),
    );
  }
}
