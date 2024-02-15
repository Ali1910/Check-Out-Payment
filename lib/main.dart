import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/Features/Checkout/presentations/views/MY_cart_view.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: Size(380, 844),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyCartView(),
      ),
    );
  }
}
