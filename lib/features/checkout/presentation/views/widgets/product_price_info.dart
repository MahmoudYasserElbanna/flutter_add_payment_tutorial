import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ProductPriceInfo extends StatelessWidget {
  const ProductPriceInfo({
    super.key,
    required this.title,
    required this.cost,
  });
  final String title, cost;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          cost,
          style: Styles.style18,
        )
      ],
    );
  }
}
