import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/check_out_done_view_body.dart';

class CheckOutDoneView extends StatelessWidget {
  const CheckOutDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CheckOutDoneViewBody(),
    );
  }
}
