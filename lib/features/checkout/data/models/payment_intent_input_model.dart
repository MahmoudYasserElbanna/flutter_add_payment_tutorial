class PaymentIntentInputModel {
  final String currency;
  final dynamic amount;
  final String customerId;
  PaymentIntentInputModel({
    required this.customerId,
    required this.currency,
    required this.amount,
  });
  toJson() {
    return {
      'currency': currency,
      'amount': amount * 100,
      'customer': customerId,
    };
  }
}

// String convertToString(dynamic amount) {
//   final dynamic convertedAmount = amount * 100;
//   return convertedAmount.toString();
// }
