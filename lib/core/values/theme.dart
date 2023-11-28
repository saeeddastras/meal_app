import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/values/dimens.dart';

import '../utils.dart';



class AppTheme {
  AppTheme._privateConstructor();

  BuildContext? context;

  static final AppTheme _instance = AppTheme._privateConstructor();

  factory AppTheme() {
    return _instance;
  }

  static init(BuildContext context) {
    _instance.context = context;
  }

  Color get primaryColor => _AppColors.colorPrimary;

  Color get colorSecondary => _AppColors.colorSecondary;

  Color get green => _AppColors.green;

  Color get fadeGreen => _AppColors.greenOpacity;

  Color get red => _AppColors.red;

  Color get fadeRed => _AppColors.fadeRed;

  Color get blue => _AppColors.blue;

  Color get greenBlue => _AppColors.greenBlue;

  Color get orange => _AppColors.orange;

  Color get blueSwitchBackground => _AppColors.blueSwitchBackground;

  Color get fadeBlue => _AppColors.blueOpacity;

  Color get rectangleColorGreen => _AppColors.rectangleColorGreen;

  Color get rectangleColorRed => _AppColors.rectangleColorRed;

  Color get amber => _AppColors.amber;

  Color get purple => _AppColors.purple;

  Color get white => _AppColors.white;

  Color get black => _AppColors.black;

  Color get iconGray => _AppColors.colorGray;

  Color get whiteBackground => isDarkMode() ? _AppColors.backgroundDark : _AppColors.white;

  Color get shadowColor => isDarkMode() ? _AppColors.shadowColorDark : _AppColors.shadowColor;

  Color get backgroundColor => isDarkMode() ? _AppColors.backgroundDark : _AppColors.backgroundLight;

  Color get iconColor => isDarkMode() ? _AppColors.iconColorDark : _AppColors.iconColorLight;

  Color get textColor1 => isDarkMode() ? _AppColors.textColor1Dark : _AppColors.textColor1Light;

  Color get textColor2 => isDarkMode() ? _AppColors.textColor2Dark : _AppColors.textColor2Light;

  Color get shimmerBaseColor => isDarkMode() ? Colors.grey.shade600 : Colors.grey.shade300;

  Color get shimmerHighlightColor => isDarkMode() ? Colors.black : Colors.white;

  Color get prButtonColor => isDarkMode() ? Colors.black.withAlpha(80) : Colors.white;

  Color get prButtonColorIcon => isDarkMode() ? Colors.white : Colors.black;

  Color get cardBackground => isDarkMode() ? _AppColors.cardBackgroundDark : _AppColors.cardBackgroundLight;

  Color get divider => isDarkMode() ? _AppColors.dividerDark : _AppColors.dividerLight;

  Color get grayLight => isDarkMode() ? _AppColors.grayLight : _AppColors.grayLight;

  Color get boxLightColor => isDarkMode() ? _AppColors.boxLightColorDark : _AppColors.boxLightColor;

  Color get gridDivider => _AppColors.gridDivider;

  //<editor-fold desc="Text Primary">
  TextStyle get textPrimary6Regular => TextStyle(color: textColor1, fontWeight: FontWeight.w200, fontSize: 8.0.dp);

  TextStyle get textPrimary6Medium => TextStyle(color: textColor1, fontWeight: FontWeight.w500, fontSize: 8.0.dp);

  TextStyle get textPrimary6DemiBold => TextStyle(color: textColor1, fontWeight: FontWeight.w600, fontSize: 8.0.dp);

  TextStyle get textPrimary6Bold => TextStyle(color: textColor1, fontWeight: FontWeight.w800, fontSize: 8.0.dp);

  TextStyle get textPrimary5Regular => TextStyle(color: textColor1, fontWeight: FontWeight.w200, fontSize: 10.0.dp);

  TextStyle get textPrimary5Medium => TextStyle(color: textColor1, fontWeight: FontWeight.w500, fontSize: 10.0.dp);

  TextStyle get textPrimary5DemiBold => TextStyle(color: textColor1, fontWeight: FontWeight.w600, fontSize: 10.0.dp);

  TextStyle get textPrimary5Bold => TextStyle(color: textColor1, fontWeight: FontWeight.w800, fontSize: 10.0.dp);

  TextStyle get textPrimary4Regular => TextStyle(color: textColor1, fontWeight: FontWeight.w200, fontSize: 12.0.dp);

  TextStyle get textPrimary4Medium => TextStyle(color: textColor1, fontWeight: FontWeight.w500, fontSize: 12.0.dp);

  TextStyle get textPrimary4DemiBold => TextStyle(color: textColor1, fontWeight: FontWeight.w600, fontSize: 12.0.dp);

  TextStyle get textPrimary4Bold => TextStyle(color: textColor1, fontWeight: FontWeight.w800, fontSize: 12.0.dp);

  TextStyle get textPrimary3Regular => TextStyle(color: textColor1, fontWeight: FontWeight.w200, fontSize: 14.0.dp);

  TextStyle get textPrimary3Medium => TextStyle(color: textColor1, fontWeight: FontWeight.w500, fontSize: 14.0.dp);

  TextStyle get textPrimary3DemiBold => TextStyle(color: textColor1, fontWeight: FontWeight.w700, fontSize: 14.0.dp);

  TextStyle get textPrimary3Bold => TextStyle(color: textColor1, fontWeight: FontWeight.w800, fontSize: 14.0.dp);

  TextStyle get textPrimary2Regular => TextStyle(color: textColor1, fontWeight: FontWeight.w200, fontSize: 16.0.dp);

  TextStyle get textPrimary2Medium => TextStyle(color: textColor1, fontWeight: FontWeight.w500, fontSize: 16.0.dp);

  TextStyle get textPrimary2DemiBold => TextStyle(color: textColor1, fontWeight: FontWeight.w700, fontSize: 16.0.dp);

  TextStyle get textPrimary2Bold => TextStyle(color: textColor1, fontWeight: FontWeight.w800, fontSize: 16.0.dp);

  TextStyle get textPrimary1Regular => TextStyle(color: textColor1, fontWeight: FontWeight.w200, fontSize: 18.0.dp);

  TextStyle get textPrimary1Medium => TextStyle(color: textColor1, fontWeight: FontWeight.w500, fontSize: 18.0.dp);

  TextStyle get textPrimary1DemiBold => TextStyle(color: textColor1, fontWeight: FontWeight.w700, fontSize: 18.0.dp);

  TextStyle get textPrimary1Bold => TextStyle(color: textColor1, fontWeight: FontWeight.w800, fontSize: 18.0.dp);

  //</editor-fold>

  //<editor-fold desc="Text Secondary">
  TextStyle get textSecondary6Regular => TextStyle(color: textColor2, fontWeight: FontWeight.w200, fontSize: 8.0.dp);

  TextStyle get textSecondary6Medium => TextStyle(color: textColor2, fontWeight: FontWeight.w500, fontSize: 8.0.dp);

  TextStyle get textSecondary6DemiBold => TextStyle(color: textColor2, fontWeight: FontWeight.w600, fontSize: 8.0.dp);

  TextStyle get textSecondary6Bold => TextStyle(color: textColor2, fontWeight: FontWeight.w800, fontSize: 8.0.dp);

  TextStyle get textSecondary5Regular => TextStyle(color: textColor2, fontWeight: FontWeight.w200, fontSize: 10.0.dp);

  TextStyle get textSecondary5Medium => TextStyle(color: textColor2, fontWeight: FontWeight.w500, fontSize: 10.0.dp);

  TextStyle get textSecondary5DemiBold => TextStyle(color: textColor2, fontWeight: FontWeight.w600, fontSize: 10.0.dp);

  TextStyle get textSecondary5Bold => TextStyle(color: textColor2, fontWeight: FontWeight.w800, fontSize: 10.0.dp);

  TextStyle get textSecondary4Regular => TextStyle(color: textColor2, fontWeight: FontWeight.w200, fontSize: 12.0.dp);

  TextStyle get textSecondary4Medium => TextStyle(color: textColor2, fontWeight: FontWeight.w500, fontSize: 12.0.dp);

  TextStyle get textSecondary4DemiBold => TextStyle(color: textColor2, fontWeight: FontWeight.w600, fontSize: 12.0.dp);

  TextStyle get textSecondary4Bold => TextStyle(color: textColor2, fontWeight: FontWeight.w800, fontSize: 12.0.dp);

  TextStyle get textSecondary3Regular => TextStyle(color: textColor2, fontWeight: FontWeight.w200, fontSize: 14.0.dp);

  TextStyle get textSecondary3Medium => TextStyle(color: textColor2, fontWeight: FontWeight.w500, fontSize: 14.0.dp);

  TextStyle get textSecondary3DemiBold => TextStyle(color: textColor2, fontWeight: FontWeight.w600, fontSize: 14.0.dp);

  TextStyle get textSecondary3Bold => TextStyle(color: textColor2, fontWeight: FontWeight.w800, fontSize: 14.0.dp);

  TextStyle get textSecondary2Regular => TextStyle(color: textColor2, fontWeight: FontWeight.w200, fontSize: 16.0.dp);

  TextStyle get textSecondary2Medium => TextStyle(color: textColor2, fontWeight: FontWeight.w500, fontSize: 16.0.dp);

  TextStyle get textSecondary2DemiBold => TextStyle(color: textColor2, fontWeight: FontWeight.w600, fontSize: 16.0.dp);

  TextStyle get textSecondary2Bold => TextStyle(color: textColor2, fontWeight: FontWeight.w800, fontSize: 16.0.dp);

  TextStyle get textSecondary1Regular => TextStyle(color: textColor2, fontWeight: FontWeight.w200, fontSize: 18.0.dp);

  TextStyle get textSecondary1Medium => TextStyle(color: textColor2, fontWeight: FontWeight.w500, fontSize: 18.0.dp);

  TextStyle get textSecondary1DemiBold => TextStyle(color: textColor2, fontWeight: FontWeight.w600, fontSize: 18.0.dp);

  TextStyle get textSecondary1Bold => TextStyle(color: textColor2, fontWeight: FontWeight.w800, fontSize: 18.0.dp);

  //</editor-fold>

  //<editor-fold desc="Text Primary Color">
  TextStyle get textPrimaryColors6Regular =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w200, fontSize: 8.0.dp);

  TextStyle get textPrimaryColors6Medium =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w500, fontSize: 8.0.dp);

  TextStyle get textPrimaryColors6DemiBold =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 8.0.dp);

  TextStyle get textPrimaryColors6Bold => TextStyle(color: primaryColor, fontWeight: FontWeight.w800, fontSize: 8.0.dp);

  TextStyle get textPrimaryColors5Regular =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w200, fontSize: 10.0.dp);

  TextStyle get textPrimaryColors5Medium =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w500, fontSize: 10.0.dp);

  TextStyle get textPrimaryColors5DemiBold =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 10.0.dp);

  TextStyle get textPrimaryColors5Bold =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w800, fontSize: 10.0.dp);

  TextStyle get textPrimaryColors4Regular =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w200, fontSize: 12.0.dp);

  TextStyle get textPrimaryColors4Medium =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w500, fontSize: 12.0.dp);

  TextStyle get textPrimaryColors4DemiBold =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 12.0.dp);

  TextStyle get textPrimaryColors4Bold =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w800, fontSize: 12.0.dp);

  TextStyle get textPrimaryColors3Regular =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w200, fontSize: 14.0.dp);

  TextStyle get textPrimaryColors3Medium =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w500, fontSize: 14.0.dp);

  TextStyle get textPrimaryColors3DemiBold =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 14.0.dp);

  TextStyle get textPrimaryColors3Bold =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w800, fontSize: 14.0.dp);

  TextStyle get textPrimaryColors2Regular =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w200, fontSize: 16.0.dp);

  TextStyle get textPrimaryColors2Medium =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w500, fontSize: 16.0.dp);

  TextStyle get textPrimaryColors2DemiBold =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 16.0.dp);

  TextStyle get textPrimaryColors2Bold =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w800, fontSize: 16.0.dp);

  TextStyle get textPrimaryColors1Regular =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w200, fontSize: 18.0.dp);

  TextStyle get textPrimaryColors1Medium =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w500, fontSize: 18.0.dp);

  TextStyle get textPrimaryColors1Bold =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w800, fontSize: 18.0.dp);

  TextStyle get textPrimaryColors1DemiBold =>
      TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 18.0.dp);

  //</editor-fold>

  //<editor-fold desc="Text White Color">
  TextStyle get textWhite6Regular => TextStyle(color: white, fontWeight: FontWeight.w200, fontSize: 8.0.dp);

  TextStyle get textWhite6Medium => TextStyle(color: white, fontWeight: FontWeight.w500, fontSize: 8.0.dp);

  TextStyle get textWhite6DemiBold => TextStyle(color: white, fontWeight: FontWeight.w700, fontSize: 8.0.dp);

  TextStyle get textWhite6Bold => TextStyle(color: white, fontWeight: FontWeight.w800, fontSize: 8.0.dp);

  TextStyle get textWhite5Regular => TextStyle(color: white, fontWeight: FontWeight.w200, fontSize: 10.0.dp);

  TextStyle get textWhite5Medium => TextStyle(color: white, fontWeight: FontWeight.w500, fontSize: 10.0.dp);

  TextStyle get textWhite5DemiBold => TextStyle(color: white, fontWeight: FontWeight.w700, fontSize: 10.0.dp);

  TextStyle get textWhite5Bold => TextStyle(color: white, fontWeight: FontWeight.w800, fontSize: 10.0.dp);

  TextStyle get textWhite4Regular => TextStyle(color: white, fontWeight: FontWeight.w200, fontSize: 12.0.dp);

  TextStyle get textWhite4Medium => TextStyle(color: white, fontWeight: FontWeight.w500, fontSize: 12.0.dp);

  TextStyle get textWhite4DemiBold => TextStyle(color: white, fontWeight: FontWeight.w700, fontSize: 12.0.dp);

  TextStyle get textWhite4Bold => TextStyle(color: white, fontWeight: FontWeight.w800, fontSize: 12.0.dp);

  TextStyle get textWhite3Regular => TextStyle(color: white, fontWeight: FontWeight.w200, fontSize: 14.0.dp);

  TextStyle get textWhite3Medium => TextStyle(color: white, fontWeight: FontWeight.w500, fontSize: 14.0.dp);

  TextStyle get textWhite3DemiBold => TextStyle(color: white, fontWeight: FontWeight.w700, fontSize: 14.0.dp);

  TextStyle get textWhite3Bold => TextStyle(color: white, fontWeight: FontWeight.w800, fontSize: 14.0.dp);

  TextStyle get textWhite2Regular => TextStyle(color: white, fontWeight: FontWeight.w200, fontSize: 16.0.dp);

  TextStyle get textWhite2Medium => TextStyle(color: white, fontWeight: FontWeight.w500, fontSize: 16.0.dp);

  TextStyle get textWhite2DemiBold => TextStyle(color: white, fontWeight: FontWeight.w700, fontSize: 16.0.dp);

  TextStyle get textWhite2Bold => TextStyle(color: white, fontWeight: FontWeight.w800, fontSize: 16.0.dp);

  TextStyle get textWhite1Regular => TextStyle(color: white, fontWeight: FontWeight.w200, fontSize: 18.0.dp);

  TextStyle get textWhite1Medium => TextStyle(color: white, fontWeight: FontWeight.w500, fontSize: 18.0.dp);

  TextStyle get textWhite1DemiBold => TextStyle(color: white, fontWeight: FontWeight.w700, fontSize: 18.0.dp);

  TextStyle get textWhite1Bold => TextStyle(color: white, fontWeight: FontWeight.w800, fontSize: 18.0.dp);

//</editor-fold>
  TextStyle get textRed5Regular => TextStyle(color: red, fontWeight: FontWeight.w200, fontSize: 10.0.dp);

  TextStyle get textRed6Regular => TextStyle(color: red, fontWeight: FontWeight.w200, fontSize: 8.0.dp);

  TextStyle get textClickable6Medium => TextStyle(
      color: blue,
      fontWeight: FontWeight.w500,
      fontSize: 8.0.dp,
      decoration: TextDecoration.underline,
      decorationColor: blue);

  TextStyle get textClickable5Medium => TextStyle(
      color: blue,
      fontWeight: FontWeight.w500,
      fontSize: 10.0.dp,
      decoration: TextDecoration.underline,
      decorationColor: blue);

  TextStyle get textBlue6Medium => TextStyle(color: blue, fontWeight: FontWeight.w500, fontSize: 8.0.dp);

  TextStyle get textBlue5Medium =>
      TextStyle(color: blue, fontWeight: FontWeight.w500, fontSize: 10.0.dp, decoration: TextDecoration.underline);

  TextStyle get textBlue4Medium => TextStyle(color: blue, fontWeight: FontWeight.w500, fontSize: 12.0.dp);

  TextStyle get textGreen5Regular => TextStyle(color: green, fontWeight: FontWeight.w200, fontSize: 10.0.dp);

  TextStyle get textGreen6Medium => TextStyle(color: green, fontWeight: FontWeight.w500, fontSize: 8.0.dp);

  TextStyle get textGreen5Medium => TextStyle(color: green, fontWeight: FontWeight.w500, fontSize: 10.0.dp);

  TextStyle get textGreen4Medium => TextStyle(color: green, fontWeight: FontWeight.w500, fontSize: 12.0.dp);

  TextStyle get textRed5Medium => TextStyle(color: red, fontWeight: FontWeight.w500, fontSize: 10.0.dp);

  TextStyle get textRed6Medium => TextStyle(color: red, fontWeight: FontWeight.w500, fontSize: 8.0.dp);

  TextStyle get textRed4Medium => TextStyle(color: red, fontWeight: FontWeight.w500, fontSize: 12.0.dp);

  TextStyle get textRed4Regular => TextStyle(color: red, fontWeight: FontWeight.w200, fontSize: 12.0.dp);

  TextStyle get textAmber4Medium => TextStyle(color: amber, fontWeight: FontWeight.w500, fontSize: 12.0.dp);

  SystemUiOverlayStyle get systemUiOverlayStyle => SystemUiOverlayStyle(
        systemNavigationBarColor: backgroundColor,
        statusBarColor: backgroundColor,
        systemNavigationBarIconBrightness: isDarkMode() ? Brightness.light : Brightness.dark,
        statusBarIconBrightness: isDarkMode() ? Brightness.light : Brightness.dark,
        statusBarBrightness: isDarkMode() ? Brightness.dark : Brightness.light,
      );

  EdgeInsets get cardPadding => EdgeInsets.only(
      top: AppDimens.cardPaddingTop,
      left: AppDimens.cardPaddingLeft,
      right: AppDimens.cardPaddingRight,
      bottom: AppDimens.cardPaddingBottom);


  static SmoothBorderRadius get smoothBorderRadiusDirectional => SmoothBorderRadius.only(
        bottomRight: Utils.isRtl()
            ? const SmoothRadius(
                cornerRadius: 15.0,
                cornerSmoothing: 1,
              )
            : const SmoothRadius(
                cornerRadius: 0.0,
                cornerSmoothing: 0,
              ),
        topRight: Utils.isRtl()
            ? const SmoothRadius(
                cornerRadius: 15.0,
                cornerSmoothing: 1,
              )
            : const SmoothRadius(
                cornerRadius: 0.0,
                cornerSmoothing: 0,
              ),
        topLeft: !Utils.isRtl()
            ? const SmoothRadius(
                cornerRadius: 15.0,
                cornerSmoothing: 1,
              )
            : const SmoothRadius(
                cornerRadius: 0.0,
                cornerSmoothing: 0,
              ),
        bottomLeft: !Utils.isRtl()
            ? const SmoothRadius(
                cornerRadius: 15.0,
                cornerSmoothing: 1,
              )
            : const SmoothRadius(
                cornerRadius: 0.0,
                cornerSmoothing: 0,
              ),
      );

  isDarkMode() {
    return false;
  }

  CardTheme cardThemeLight() {
    return CardTheme(elevation: 4.0, color: AppTheme().cardBackground, shape: borderButtonStyle);
  }

  SmoothRectangleBorder borderButtonStyle = SmoothRectangleBorder(
      borderRadius: SmoothBorderRadius(
    cornerRadius: 10.0,
    cornerSmoothing: 1,
  ));

  CardTheme cardThemeDark() {
    return CardTheme(
        elevation: 4.0,
        color: AppTheme().cardBackground,
        shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
          cornerRadius: 10.0, //todo add .dp to these values
          cornerSmoothing: 1,
        )));
  }
}

class _AppColors {
  static const colorPrimary = Color(0xff105671);

  static const colorGray = Color(0xff999999);

  static const colorSecondary = Color(0xff105671);

  static const green = Color(0xff6CD38B);

  static const greenOpacity = Color(0x346CD38B);

  static const red = Color(0xffEF5350);

  static const fadeRed = Color(0x81ED7C7D);

  static const blue = Color(0xff0092E4);

  static const greenBlue = Color(0xff29D0CA);

  static const orange = Color(0xffFF8C00);

  static const blueSwitchBackground = Color(0x660092e4);

  static const blueOpacity = Color(0x340092e4);

  static const rectangleColorGreen = Color(0x336cd38b);

  static const rectangleColorRed = Color(0x33EF5350);

  static const amber = Color(0xffFCC048);

  static const purple = Color(0xff800DF2);

  static const white = Color(0xffffffff);

  static const black = Color(0xff000000);

  static const backgroundLight = Color(0xfff5f5f5);

  static const textColor1Light = Color(0xff262626);

  static const textColor2Light = Color(0xff999999);

  static const cardBackgroundLight = Color(0xffffffff);

  static const cardBackgroundDark = Color(0xff3c3c3c);

  static const dividerLight = Color(0xffeaeaea);

  static const backgroundDark = Color(0xff1B1B1B);

  static const grayLightDivider = Color(0xfff8f8f8);

  static const textColor1Dark = Color(0xffFFFFFF);

  static const textColor2Dark = Color(0xffCCCCCC);

  static const dividerDark = Color(0xff787878);

  static const iconColorLight = Color(0xff262626);

  static const gridDivider = Color(0x261277d3);

  static const iconColorDark = Color(0xffFFFFFF);

  static const shadowColor = Color(0x0f5b5858);

  static const shadowColorDark = Colors.black12;

  static const boxLightColor = Color(0xFFEAEAEA);

  static const boxLightColorDark = backgroundDark;

  static const grayLight = grayLightDivider;
}
