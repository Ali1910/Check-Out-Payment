import 'package:flutter/material.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/custom_app_bar.dart';
import 'package:payment/Features/Checkout/presentations/views/MyCartViewBody.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar(title: 'My Cart'), body: const MyCartViewBody());
  }
}
