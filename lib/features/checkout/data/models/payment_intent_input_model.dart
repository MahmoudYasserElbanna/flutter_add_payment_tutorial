class PaymentIntentInputModel {
  final String currency;
  final dynamic amount;
  PaymentIntentInputModel({
    required this.currency,
    required this.amount,
  });
  toJson() {
    return {
      'currency': currency,
      'amount': amount,
    };
  }
}

// String convertToString(dynamic amount) {
//   final dynamic convertedAmount = amount * 100;
//   return convertedAmount.toString();
// }
