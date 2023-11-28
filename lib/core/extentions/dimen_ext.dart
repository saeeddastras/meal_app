import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app/core/enums/mobile_size.dart';
import 'package:meal_app/core/utils.dart';
import 'package:sizer/sizer.dart';



extension DimenExt on double {

  double get dp {
    switch (Utils.screenType()) {
      case MobileSize.small:
        return calculatedSizeDp(3.7);
      case MobileSize.normal:
        return calculatedSizeDp(3.5);
      case MobileSize.large:
        return calculatedSizeDp(3.2);
    }
  }

  double calculatedSizeSp(double size) {
    var ex = MediaQuery.of(Get.context!).textScaleFactor;

    return (Utils.isTablet() ? this * (SizerUtil.width / 5) / 100 : this * (SizerUtil.width / size) / 100) / ex;
  }

  double calculatedSizeDp(double size) {
    return Utils.isTablet() ? this * (SizerUtil.width / 5) / 100 : this * (SizerUtil.width / size) / 100;
  }
}
