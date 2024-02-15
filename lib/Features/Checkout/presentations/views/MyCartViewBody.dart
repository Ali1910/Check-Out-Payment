import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/Cart_Info.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/CustomButton.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/TotalPrice.dart';
import 'package:payment/Features/paymet_detials/payment_details_view.dart';

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
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const PaymentDetailsView();
                  },
                ),
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
