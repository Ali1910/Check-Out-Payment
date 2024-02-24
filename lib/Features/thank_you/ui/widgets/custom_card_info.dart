import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/utils/styles.dart';

class CustomCreditCardItem extends StatelessWidget {
  const CustomCreditCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305.w,
      padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 16.h),
      margin: EdgeInsets.only(top: 30.h),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.w))),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/logo.svg'),
          SizedBox(
            width: 16.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Credit Card', style: Styles.style18),
              Text(
                'Mastercard **78',
                style: Styles.style18.copyWith(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
