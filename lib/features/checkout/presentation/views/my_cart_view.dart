import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_rounded,
          size: 42,
        ),
        title: const Text(
          'My Cart',
          style: Styles.style25,
        ),
        centerTitle: true,
      ),
    );
  }
}
