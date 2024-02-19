import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard(
      {super.key, required this.formkey, required this.autovalidateMode});
  final GlobalKey<FormState> formkey;
  final AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            isHolderNameVisible: true,
            onCreditCardWidgetChange: (value) {},
          ),
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            autovalidateMode: widget.autovalidateMode,
            cvvCode: cvvCode,
            onCreditCardModelChange: (value) {
              cardHolderName = value.cardHolderName;
              cardNumber = value.cardNumber;
              expiryDate = value.expiryDate;
              cvvCode = value.cvvCode;
              showBackView = value.isCvvFocused;
              setState(() {});
            },
            formKey: widget.formkey,
          ),
        ],
      ),
    );
  }
}
