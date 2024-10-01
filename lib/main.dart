import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/my_cart.dart';

void main() {
  runApp(const AddPaymentApp());
}

class AddPaymentApp extends StatelessWidget {
  const AddPaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCart(),
    );
  }
}
