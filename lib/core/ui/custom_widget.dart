import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/ui/custom_widget/vertical_space.dart';
import 'package:meal_app/core/values/theme.dart';

AppBar getAppBarWidget(String title, List<Widget>? actions,
    {PreferredSizeWidget? tabBar, Future<bool> Function()? onBackPressed , bool ? showBackButton}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    title: Text(title, style: AppTheme().textPrimary4Bold),
    leading: SizedBox(
      width: 20,
      height: 20,
      child: showBackButton??true ?GestureDetector(
        child: Icon(
          Icons.arrow_back_ios,
          color: AppTheme().iconColor,
          size: 20.0.dp,
        ),
        onTap: () {
          if (onBackPressed != null) {
            onBackPressed();
          } else {
            Navigator.pop(Get.context!);
          }
        },
      ):Container(),
    ),
    elevation: 0.0,
    centerTitle: true,
    systemOverlayStyle: AppTheme().systemUiOverlayStyle,
    actions: actions,
    bottom: tabBar,
  );
}

Future<T?> showBottomSheetGSC<T>(
    String title,
    Widget widget,
    BuildContext context, {
      bool isMandatory = false,
      bool isCenterTitle = true,
      Color? background,
      Widget? rightWidget,
      bool isScrollControlled = false,
      TextStyle? titleStyle,
    }) {
  return showModalBottomSheet(
    elevation: 0,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    enableDrag: !isMandatory,
    isDismissible: !isMandatory,
    context: context,
    useRootNavigator: false,
    builder: (BuildContext bc) {
      return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(bc).viewInsets.bottom, top: 25.0.dp),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              WillPopScope(
                onWillPop: () async => !isMandatory,
                child: Wrap(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: background ?? AppTheme().whiteBackground,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0.dp),
                        topRight: Radius.circular(16.0.dp),
                      ),
                    ),
                    padding: EdgeInsets.all(12.0.dp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        VerticalSpace(8.0.dp),
                        Row(
                          children: [
                            Visibility(
                              visible: title != '',
                              child: Expanded(
                                child: isCenterTitle
                                    ? Center(child: Text(title, style: AppTheme().textPrimary5Bold))
                                    : Text(title, style: titleStyle ?? AppTheme().textPrimary3Bold),
                              ),
                            ),
                            Visibility(
                              visible: !isMandatory,
                              child: InkWell(
                                child: SvgPicture.asset('assets/icons/ic_close.svg'),
                                onTap: () {
                                  Navigator.of(Get.context!).pop();
                                  return;
                                },
                              ),
                            ),
                          ],
                        ),
                        rightWidget ?? Container(),
                        widget,
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      );
    },
  );
}
