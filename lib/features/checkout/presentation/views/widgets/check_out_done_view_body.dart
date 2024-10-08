import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_check_out_card.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_check_out_icon.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_dashed_line.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_positioned.dart';

class CheckOutDoneViewBody extends StatelessWidget {
  const CheckOutDoneViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 80.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const CustomCheckOutCard(),
          CustomPositioned(
            left: -30,
            bottom: MediaQuery.of(context).size.width * 0.3,
          ),
          CustomPositioned(
            right: -30,
            bottom: MediaQuery.of(context).size.width * 0.3,
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CustomCheckOutIcon(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.3 + 30,
            left: 8 + 30,
            right: 8 + 30,
            child: const CustomDashedLine(),
          )
        ],
      ),
    );
  }
}
