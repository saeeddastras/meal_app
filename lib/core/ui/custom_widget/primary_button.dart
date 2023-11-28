import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/ui/custom_widget/horizontal_space.dart';

import '../../values/theme.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    Key? key,
    this.title,
    required this.onTap,
    this.enableColor,
    this.textColor,
    this.icon,
    this.leftIcon,
    this.isSquare = false,
    this.buttonSize,
    this.enabled = true,
    this.backgroundColor,
    this.textStyle,
  }) : super(key: key);
  String? title;
  VoidCallback? onTap;
  Color? enableColor;
  Color? textColor;
  Color? backgroundColor;
  String? icon;
  double? buttonSize;
  bool isSquare;
  bool enabled;
  TextStyle? textStyle;
  String? leftIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonSize ?? 40.0.dp,
      width: isSquare ? buttonSize ?? 40.0.dp : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:
              backgroundColor ?? (enabled ? (enableColor ?? AppTheme().primaryColor) : AppTheme().textColor2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
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
                colorFilter: ColorFilter.mode(AppTheme().white, BlendMode.srcIn),
              ),
            ),
            Visibility(
              visible: title != null,
              child: Row(
                children: [
                  const SizedBox(width: 8),
                  Text(
                    title ?? '',
                    maxLines: 1,
                    style: textStyle ?? AppTheme().textWhite4Bold,
                  ),
                ],
              ),
            ),
            HorizontalSpace(8.0.dp),
            Visibility(
              visible: leftIcon != null && leftIcon!.isNotEmpty,
              child: SvgPicture.asset(
                leftIcon ?? 'assets/icons/gps_off.svg',
                height: 15.0.dp,
                width: 15.0.dp,
                colorFilter: ColorFilter.mode(AppTheme().white, BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
