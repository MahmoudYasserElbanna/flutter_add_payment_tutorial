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
import 'package:payment_app/features/checkout/data/models/ephemeral_key_model/eph_key_model.dart';
import 'package:payment_app/features/checkout/data/models/init_payment_sheet_input_model.dart';
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
  Future initPaymentSheet(
      {required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Mahmoud Elbanna',
        paymentIntentClientSecret:
            initPaymentSheetInputModel.paymentIntentClientSecret,
        customerEphemeralKeySecret: initPaymentSheetInputModel.ephemeralKey,
        customerId: initPaymentSheetInputModel.customerId,
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
    PaymentIntentModel paymentIntentModel = await createPaymentIntent(
      paymentIntentInputModel,
    );
    EphemeralKeyModel ephemeralKey = await createEphemeralKey(
      customerId: paymentIntentInputModel.customerId,
    );
    InitPaymentSheetInputModel initPaymentSheetInputModel =
        InitPaymentSheetInputModel(
      customerId: paymentIntentInputModel.customerId,
      paymentIntentClientSecret: paymentIntentModel.clientSecret!,
      ephemeralKey: ephemeralKey.secret!,
    );

    await initPaymentSheet(
      initPaymentSheetInputModel: initPaymentSheetInputModel,
    );
    await displayPaymentSheet();
  }

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    ApiService apiService = ApiService();

    var response = await apiService.post(
      url: 'https://api.stripe.com/v1/ephemeral_keys',
      token: ApiKeys.stripeApiKey,
      contentType: Headers.formUrlEncodedContentType,
      header: {
        "Authorization": "Bearer ${ApiKeys.stripeApiKey}",
        "Stripe-Version": "2023-08-16",
      },
      body: {
        'customer': customerId,
      },
    );
    var ephemeralKey = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKey;
  }
}
