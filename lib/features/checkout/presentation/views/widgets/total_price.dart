import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
    required this.total,
    required this.finalPrice,
  });
  final String total, finalPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          total,
          style: Styles.style24,
        ),
        const Spacer(),
        Text(
          finalPrice,
          style: Styles.style24,
        )
      ],
    );
  }
}
