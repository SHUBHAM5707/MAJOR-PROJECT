import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/routs/app_route.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/theme/theme.dart';
import 'package:shop_kart/binding/general_binding.dart';


class App  extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeMode.system,
        theme: SkAppTheme.lightTheme,
        darkTheme: SkAppTheme.darkTheme,
        initialBinding: GeneralBinding(),
        getPages: AppRoutes.pages,
        home: const Scaffold(backgroundColor: SkColors.primary,body: Center(child: CircularProgressIndicator(color: Colors.white)),),
    );
  }
}