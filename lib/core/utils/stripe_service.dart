// we will put the 3 methods of stripe here
// TODO
/*
  [1] Create Payment Intent.
  [2] Init Payment Sheet.
  [3] Display/Present Payment Sheet.
  */
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/core/utils/api_service.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  // TODO [1] Create Payment Intent.
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    ApiService apiService = ApiService();
    String url = 'https://api.stripe.com/v1/payment_intents';
    var response = await apiService.post(
      url: url,
      body: paymentIntentInputModel.toJson(),
      token: ApiKeys.stripeApiKey,
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }
  // TODO [2] Init Payment Sheet.

  // TODO [3] Display/Present Payment Sheet.
}
