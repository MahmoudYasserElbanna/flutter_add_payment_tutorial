import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/presentation/views/check_out_done_view.dart';
import 'package:payment_app/features/checkout/presentation/views/manager/cubit/stripe_payment_cubit.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentState>(
      listener: (context, state) {
        if (state is StripePaymentSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const CheckOutDoneView(),
            ),
          );
        } else if (state is StripePaymentFailed) {
          SnackBar snackBar = SnackBar(
            content: Text(state.errMessage),
            backgroundColor: Colors.red,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          buttonLabel: 'Continue',
          isLoading: state is StripePaymentLoading ? true : false,
          onPressed: () {},
        );
      },
    );
  }
}