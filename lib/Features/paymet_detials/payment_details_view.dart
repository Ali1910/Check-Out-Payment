import 'package:flutter/material.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/custom_app_bar.dart';
import 'package:payment/Features/paymet_detials/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(title: 'Payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}
