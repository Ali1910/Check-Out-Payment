import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/Cart_Info.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/CustomButton.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/TotalPrice.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/bottom_sheet.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SizedBox(
            height: 18.h,
          ),
          Expanded(
            child: Image.asset(
              'assets/images/BasketImage.png',
            ),
          ),
          SizedBox(height: 25.h),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          SizedBox(height: 3.h),
          const OrderInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          SizedBox(height: 3.h),
          const OrderInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          Divider(
            color: const Color(0xFFC7C7C7),
            thickness: 2.h,
            height: 34.h,
            indent: 35.w,
            endIndent: 35.w,
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            text: 'Complete Payment',
            onPressed: () {
              showBottomSheet(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xff34A853)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.w),
                  ),
                ),
                context: context,
                builder: (context) {
                  return const BottomSheetBody();
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
