import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        20,
        (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: const Color(0xFFB7B7B7),
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}
