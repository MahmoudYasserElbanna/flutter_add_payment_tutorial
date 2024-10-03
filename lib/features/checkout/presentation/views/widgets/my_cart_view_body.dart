import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details.dart';

import 'product_price_info.dart';
import 'total_price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Expanded(child: Image.asset('assets/images/basketImage.png')),
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
          CustomButton(
            buttonLabel: 'Complete Payment',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const PaymentDetailsView();
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
