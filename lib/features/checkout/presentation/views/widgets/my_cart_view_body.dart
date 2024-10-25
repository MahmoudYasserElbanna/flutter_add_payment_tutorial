import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/data/models/repos/checkout_repo_impl.dart';
import 'package:payment_app/features/checkout/presentation/views/manager/cubit/stripe_payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_methodes_bottom_sheet.dart';

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
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return const PaymentDetailsView();
              //     },
              //   ),
              // );
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                useSafeArea: true,
                context: context,
                builder: (BuildContext context) {
                  return BlocProvider(
                    create: (context) => StripePaymentCubit(CheckoutRepoImpl()),
                    child: const PaymentMethodBottomSheet(),
                  );
                },
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
