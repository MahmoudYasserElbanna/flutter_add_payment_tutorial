import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'widgets/custom_button.dart';
import 'widgets/product_price_info.dart';
import 'widgets/total_price.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_rounded,
          size: 42,
        ),
        title: const Text(
          'My Cart',
          style: Styles.style25,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Image.asset('assets/images/basketImage.png'),
            const SizedBox(height: 32),
            const ProductPriceInfo(title: 'Order Subtotal', cost: r'$42.97'),
            const ProductPriceInfo(title: 'Discount', cost: r'$0'),
            const ProductPriceInfo(title: 'Shipping', cost: r'$8'),
            const Divider(
              color: Color(0xFFC6C6C6),
              height: 32,
              thickness: 2,
            ),
            const TotalPrice(
              total: 'Total',
              finalPrice: r'$50.97',
            ),
            const SizedBox(height: 16),
            const CustomButton(buttonLabel: 'Complete Payment'),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
