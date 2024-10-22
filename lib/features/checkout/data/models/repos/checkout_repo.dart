import 'package:dartz/dartz.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentModel});

  // we use void function that will grantee ti use the payment is success.
}

abstract class Failure {
  String errMessage;
  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});
}

class LocalFailure extends Failure {
  LocalFailure({required super.errMessage});
}
