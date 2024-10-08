import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CheckOutInfo extends StatelessWidget {
  const CheckOutInfo({
    super.key,
    required this.filed,
    required this.infoOfFiled,
  });
  final String filed, infoOfFiled;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          filed,
          style: Styles.style18,
        ),
        Text(
          infoOfFiled,
          style: Styles.styleSemiBold18,
        ),
      ],
    );
  }
}
