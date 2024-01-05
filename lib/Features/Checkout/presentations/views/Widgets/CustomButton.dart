import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        debugPrint('برافو عليييييييييييييييك');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff34A853),
        maximumSize: const Size(double.infinity, 60),
        minimumSize: const Size(double.infinity, 36),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child:
          const Center(child: Text('Complete Payment', style: Styles.style22)),
    );
  }
}
