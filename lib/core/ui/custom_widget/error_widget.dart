import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/ui/custom_widget/vertical_space.dart';
import 'package:meal_app/core/values/strings.dart';
import 'package:meal_app/core/values/theme.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.0.dp),
        child: Column(
          children: [
            Lottie.asset("assets/lottie/lottie_failure.json" , width: 150.0.dp , height: 150.0.dp),
            VerticalSpace(36.0.dp) ,
            Text(Strings.serviceFailure , style: AppTheme().textPrimary4Bold) ,
          ],
        ),

      ),
    );
  }
}
