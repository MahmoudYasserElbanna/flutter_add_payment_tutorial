import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_method_item.dart';

class PaymentMethodListView extends StatelessWidget {
  const PaymentMethodListView({super.key});

  final List<String> paymentMethodsImages = const [
    'assets/images/cardPayment.svg',
    'assets/images/paypalPayment.svg',
    'assets/images/applePayment.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        itemCount: paymentMethodsImages.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return PaymentMethodItem(
            image: paymentMethodsImages[index],
          );
        },
      ),
    );
  }
}
