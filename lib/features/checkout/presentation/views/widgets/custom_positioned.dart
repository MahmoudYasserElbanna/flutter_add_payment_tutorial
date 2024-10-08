import 'package:flutter/material.dart';

class CustomPositioned extends StatelessWidget {
  const CustomPositioned({
    super.key,
    this.left,
    this.right,
    this.bottom,
    this.top,
  });
  final double? left, right, bottom, top;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      left: left,
      right: right,
      top: top,
      child: const CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
      ),
    );
  }
}
