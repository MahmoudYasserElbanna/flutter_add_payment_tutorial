import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/presentation/views/check_out_done_view.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_method_list_view.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PaymentMethodListView(),
          const SizedBox(height: 16),
          CustomButton(
            buttonLabel: 'Continue',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const CheckOutDoneView();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
