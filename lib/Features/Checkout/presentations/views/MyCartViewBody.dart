import 'package:flutter/material.dart';
import 'package:payment/Features/Checkout/presentations/views/Widgets/Cart_Info.dart';
import 'package:payment/Features/Checkout/presentations/views/Widgets/CustomButton.dart';
import 'package:payment/Features/Checkout/presentations/views/Widgets/TotalPrice.dart';
import 'package:payment/core/utils/styles.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: Image.asset(
              'assets/images/BasketImage.png',
            ),
          ),
          const SizedBox(height: 25),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          const SizedBox(height: 3),
          const OrderInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          const SizedBox(height: 3),
          const OrderInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          const Divider(
            color: Color(0xFFC7C7C7),
            thickness: 2,
            height: 34,
            indent: 35,
            endIndent: 35,
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 16,
          ),
          const CustomButton(),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
