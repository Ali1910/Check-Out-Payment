import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment/core/utils/styles.dart';

class PaiditemInfo extends StatelessWidget {
  const PaiditemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(FontAwesomeIcons.barcode, size: 70.w),
        Container(
          width: 113.w,
          height: 58.h,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.w),
              side: const BorderSide(
                color: Color(
                  0xff34A853,
                ),
              ),
            ),
          ),
          child: Center(
            child: Text(
              'paid',
              style: Styles.style24.copyWith(
                  color: const Color(
                0xff34A853,
              )),
            ),
          ),
        )
      ],
    );
  }
}
