import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/values/theme.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ required this.title , this.onBackPressed , this.actions, super.key});
  final String title ;
  final Future<bool> Function()? onBackPressed ;
  final List<Widget>? actions ;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(title, style: AppTheme().textPrimary4Bold),
      leading: SizedBox(
        width: 20,
        height: 20,
        child: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: AppTheme().iconColor,
            size: 20.0.dp,
          ),
          onTap: () {
            if (onBackPressed != null) {
              onBackPressed!();
            } else {
              Navigator.pop(Get.context!);
            }
          },
        ),
      ),
      elevation: 0.0,
      centerTitle: true,
      systemOverlayStyle: AppTheme().systemUiOverlayStyle,
      actions: actions,
    );

  }
}
