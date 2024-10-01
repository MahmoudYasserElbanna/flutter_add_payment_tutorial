import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: Styles.style25,
        ),
        centerTitle: true,
      ),
    );
  }
}
