import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/values/theme.dart';

class PrimaryLoading extends StatelessWidget {
  const PrimaryLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/lottie/loading_inline.json',
        height: 200.0.dp,
      ),
    );
  }
}
