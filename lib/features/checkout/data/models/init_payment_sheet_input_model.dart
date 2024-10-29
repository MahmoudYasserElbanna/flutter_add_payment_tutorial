class InitPaymentSheetInputModel {
  final String customerId;
  final String ephemeralKey;
  final String paymentIntentClientSecret;

  InitPaymentSheetInputModel({
    required this.customerId,
    required this.ephemeralKey,
    required this.paymentIntentClientSecret,
  });
}
