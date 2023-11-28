import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.0.dp),
        child: Lottie.asset("assets/lottie/empty.json"),
      ),
    );
  }
}
