import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/Features/Checkout/presentations/Widgets/CustomButton.dart';
import 'package:payment/Features/paymet_detials/widgets/payment_list_view.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PaymentListView(),
          SizedBox(
            height: 32.h,
          ),
          CustomButton(
            text: 'Continue',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
