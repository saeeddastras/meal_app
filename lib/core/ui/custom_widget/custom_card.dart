import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';

import '../../values/theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.child, this.onTap, this.margin, this.backgroundColor}) : super(key: key);

  final Widget child;
  final EdgeInsets? margin;
  final GestureTapCallback? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppTheme().cardBackground,
        borderRadius: SmoothBorderRadius(
          cornerRadius: 10.0.dp,
          cornerSmoothing: 1,
        ),
        boxShadow: [
          BoxShadow(color: AppTheme().shadowColor, spreadRadius: 0.4, blurRadius: 20, blurStyle: BlurStyle.outer),
        ],
      ),
      child: Material(
        type: MaterialType.button,
        color: Colors.transparent,
        child: onTap != null
            ? InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0.dp),
                ),
                onTap: () {
                  onTap?.call();
                },
                child: Container(
                  child: child,
                ),
              )
            : Container(
                child: child,
              ),
      ),
    );
  }
}
