import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:task_flutter/core/routes/route.dart';
import 'core/theme/controller/theme_controller.dart';
import 'core/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Task',

        ///theme ///
        themeMode: ThemeController().themeDataGet,
        theme: ThemeApp.lightTheme,
        darkTheme: ThemeApp.darkTheme,

        /// routes ///
        initialRoute: Routes.signScreen,
        getPages: AppRoutes.routes);
  }
}
