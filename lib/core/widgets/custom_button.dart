import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonLabel,
    this.onPressed,
    this.isLoading = false,
  });
  final String buttonLabel;
  final bool isLoading;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 64),
        backgroundColor: const Color(0xFF34A853), // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Rounded corners
        ),
        elevation: 0,
      ),
      child: isLoading
          ? const CircularProgressIndicator()
          : Text(
              buttonLabel,
              style: Styles.style22,
            ),
    );
  }
}
