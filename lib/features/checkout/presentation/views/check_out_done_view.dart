import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_app_bar.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/check_out_done_view_body.dart';

class CheckOutDoneView extends StatelessWidget {
  const CheckOutDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Transform.translate(
          offset: const Offset(0, -16),
          child: const CheckOutDoneViewBody(),
        ));
  }
}
