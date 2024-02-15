import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/Features/paymet_detials/widgets/custom_payment_item.dart';

class PaymentListView extends StatefulWidget {
  const PaymentListView({super.key});

  @override
  State<PaymentListView> createState() => _PaymentListViewState();
}

class _PaymentListViewState extends State<PaymentListView> {
  final List<String> paymentMethodsImage = const [
    'assets/images/card.svg',
    'assets/images/paypal.svg',
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      child: ListView.builder(
        itemCount: paymentMethodsImage.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: CustomPaymentItem(
              isactive: activeIndex == index ? true : false,
              imageUrl: paymentMethodsImage[index],
            ),
          );
        },
      ),
    );
  }
}
