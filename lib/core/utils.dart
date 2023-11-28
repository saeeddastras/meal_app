import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'enums/mobile_size.dart';

class Utils {

  static MobileSize screenType() {
    double screenSize = MediaQuery.of(Get.context!).size.width;
    if (screenSize > 600) {
      return MobileSize.large;
    } else if (screenSize > 350 && screenSize < 600) {
      return MobileSize.normal;
    } else {
      return MobileSize.small;
    }
  }

  static bool isTablet() =>
      SizerUtil.deviceType == DeviceType.tablet; //MediaQuery.of(Get.context!).size.shortestSide >= 600;
  static bool isRtl() {
    return Localizations.localeOf(Get.context!).languageCode == 'fa';
  }

  static route(
      BuildContext context,
      Widget screen, {
        bool canBack = true,
        ValueSetter<dynamic>? onResult,
      }) {
    Navigator.pushAndRemoveUntil<dynamic>(
      context,
      MaterialPageRoute<dynamic>(builder: (BuildContext context) => screen),
          (route) => canBack, //if you want to disable back feature set to false
    ).then(onResult ?? (value) {});
  }

  static routeAndRemoveCurrent(
      BuildContext context,
      Widget screen,
      ) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (BuildContext context) => screen),
    );
  }

}
