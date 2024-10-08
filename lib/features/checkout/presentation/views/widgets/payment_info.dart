import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/core/utils/styles.dart';

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/logo.svg'),
          const SizedBox(width: 16),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'Credit Card\n',
                  style: Styles.style18,
                ),
                TextSpan(
                  text: 'Mastercard **78',
                  style: Styles.style16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
