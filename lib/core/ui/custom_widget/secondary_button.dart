import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/ui/custom_widget/horizontal_space.dart';

import '../../values/theme.dart';

class SecondaryButton extends StatelessWidget {
  var title;
  VoidCallback onTap;
  Color? borderColor;
  TextStyle? textStyle;
  bool enabled;
  String? icon;

  SecondaryButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.borderColor,
    this.textStyle,
    this.enabled = false,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0.dp,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
              shape: SmoothRectangleBorder(
                side: BorderSide(color: borderColor ?? AppTheme().textColor2),
                borderRadius: SmoothBorderRadius(
                  cornerRadius: 10.0,
                  cornerSmoothing: 1,
                ),
              ),
              minimumSize: Size(
                double.infinity,
                10.0.dp,
              )),
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: icon != null && icon!.isNotEmpty,
                child: SvgPicture.asset(
                  icon ?? 'assets/icons/gps_off.svg',
                  height: 15.0.dp,
                  width: 15.0.dp,
                  colorFilter: ColorFilter.mode(AppTheme().textColor2, BlendMode.srcIn),
                ),
              ),
              HorizontalSpace(8.0.dp),
              Text(
                title,
                maxLines: 1,
                style: (enabled) ? textStyle ?? AppTheme().textPrimary4Medium : AppTheme().textSecondary4Medium,
              ),
            ],
          )),
    );
  }
}
