import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/barcode_payment.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/check_out_info.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_info.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/total_price.dart';

class CustomCheckOutCard extends StatelessWidget {
  const CustomCheckOutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFededed),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 40 + 16, left: 24, right: 24),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            const SizedBox(height: 24),
            const CheckOutInfo(filed: 'Date', infoOfFiled: '01/24/2023'),
            const SizedBox(height: 12),
            const CheckOutInfo(filed: 'Time', infoOfFiled: '10:30 AM'),
            const SizedBox(height: 12),
            const CheckOutInfo(filed: 'To', infoOfFiled: 'Sam Louis'),
            const SizedBox(height: 24),
            const Divider(
              color: Color(0xFFC6C6C6),
              height: 16,
              thickness: 2,
            ),
            const TotalPrice(
              total: 'Total',
              finalPrice: r'$50.97',
            ),
            const SizedBox(height: 24),
            const UsedCardInfo(),
            const Spacer(),
            const BarcodePayment(),
            SizedBox(
              height: ((MediaQuery.of(context).size.width * 0.2 + 20) / 2) - 24,
            ),
          ],
        ),
      ),
    );
  }
}
