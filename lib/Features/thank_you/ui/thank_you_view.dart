import 'package:flutter/material.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/custom_app_bar.dart';
import 'package:payment/Features/thank_you/ui/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(title: ''),
      body: Transform.translate(
        offset: const Offset(0, -16),
        child: const ThankYouViewBody(),
      ),
    );
  }
}
