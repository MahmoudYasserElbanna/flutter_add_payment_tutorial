import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

AppBar buildAppBar({required String appBarTitle}) {
  return AppBar(
    elevation: 0,
    leading: const Icon(
      Icons.arrow_back_rounded,
      size: 42,
    ),
    title: Text(
      appBarTitle,
      style: Styles.style25,
    ),
    centerTitle: true,
  );
}
