import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/Features/Checkout/presentations/views/MyCartViewBody.dart';
import 'package:payment/core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Center(
            child: SvgPicture.asset('assets/images/Arrow.svg'),
          ),
          title: const Text(
            'My Cart',
            style: Styles.style25,
          ),
        ),
        body: const MyCartViewBody());
  }
}
