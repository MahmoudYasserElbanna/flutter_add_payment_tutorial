import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const AddPaymentApp());
}

class AddPaymentApp extends StatelessWidget {
  const AddPaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
/* Steps To Add Stripe Payment Method
  [1] Add flutter_stripe package. [Done]
  [2] Create Payment Intent. [Api Service, Stripe Service]
  [3] Init Payment Sheet.
  [4] Display/Present Payment Sheet.
 */