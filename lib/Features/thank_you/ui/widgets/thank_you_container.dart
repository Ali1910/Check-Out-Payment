import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/TotalPrice.dart';
import 'package:payment/Features/thank_you/ui/widgets/custom_card_info.dart';
import 'package:payment/Features/thank_you/ui/widgets/custom_payment_info.dart';
import 'package:payment/Features/thank_you/ui/widgets/paid_info_item.dart';
import 'package:payment/core/utils/styles.dart';

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
      child: Padding(
        padding: EdgeInsets.only(top: 50.h + 16.h, left: 25.w, right: 25.w),
        child: Column(
          children: [
            Text(
              'Thank You',
              style: Styles.style25,
              textAlign: TextAlign.center,
            ),
            Text(
              'Your transaction was successful',
              style: Styles.style20,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 42.h,
            ),
            const PaymentItemInfo(
              data: 'Date',
              value: '01/24/2024',
            ),
            const PaymentItemInfo(
              data: 'Time',
              value: '10:15 AM',
            ),
            const PaymentItemInfo(
              data: 'To',
              value: 'Sam Louis',
            ),
            Divider(
              endIndent: 29.w,
              indent: 29.w,
              thickness: 3,
              height: 60.h,
              color: const Color(0xffC7C7C7),
            ),
            const TotalPrice(title: 'Total', value: r'$50.97'),
            const CustomCreditCardItem(),
            const Spacer(),
            const PaiditemInfo(),
            SizedBox(
              height: ((130 / 2) - 29).h,
            )
          ],
        ),
      ),
    );
  }
}
