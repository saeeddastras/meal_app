import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:meal_app/core/data/api/api_provider.dart';
import 'package:meal_app/core/values/theme.dart';
import 'package:meal_app/feature/category/presentation/pages/category_screen.dart';
import 'package:sizer/sizer.dart';

import 'core/di/di.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ApiProvider.initDio();
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        AppTheme.init(context);
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const CategoryScreen(),
        );
      },
    );
  }
}
