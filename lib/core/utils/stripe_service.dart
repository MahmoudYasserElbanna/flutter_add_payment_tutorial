// we will put the 3 methods of stripe here
// TODO
/*
  [1] Create Payment Intent.
  [2] Init Payment Sheet.
  [3] Display/Present Payment Sheet.
  */
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/core/utils/api_service.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  // TODO [1] Create Payment Intent.
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    ApiService apiService = ApiService();

    var response = await apiService.post(
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.stripeApiKey,
      contentType: Headers.formUrlEncodedContentType,
      body: paymentIntentInputModel.toJson(),
    );

    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  /* -------------------------------------------------------------------- */
  // TODO [2] Init Payment Sheet.
  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Mahmoud Elbanna',
        paymentIntentClientSecret: paymentIntentClientSecret,
      ),
    );
  }

  /* -------------------------------------------------------------------- */
  // TODO [3] Display/Present Payment Sheet.
  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  /* -------------------------------------------------------------------- */
  // *Collect the all stripe functions in one function [code refactoring]
  makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    print(paymentIntentInputModel.amount);
    print(paymentIntentInputModel.currency);
    PaymentIntentModel paymentIntentModel = await createPaymentIntent(
      paymentIntentInputModel,
    );
    await initPaymentSheet(
      paymentIntentClientSecret: paymentIntentModel.clientSecret!,
    );
    await displayPaymentSheet();
  }
}
