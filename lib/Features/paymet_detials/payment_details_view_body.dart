import 'package:flutter/material.dart';
import 'package:payment/Features/paymet_detials/widgets/payment_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PaymentListView(),
        ],
      ),
    );
  }
}
