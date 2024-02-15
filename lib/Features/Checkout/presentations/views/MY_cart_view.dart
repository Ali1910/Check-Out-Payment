import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/custom_app_bar.dart';
import 'package:payment/Features/Checkout/presentations/views/MyCartViewBody.dart';
import 'package:payment/core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar(title: 'My Cart'), body: const MyCartViewBody());
  }
}
