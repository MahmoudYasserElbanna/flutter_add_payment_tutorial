import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonLabel});
  final String buttonLabel;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 64),
        backgroundColor: const Color(0xFF34A853), // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Rounded corners
        ),
      ),
      child: Text(
        buttonLabel,
        style: Styles.style22,
      ),
    );
  }
}
