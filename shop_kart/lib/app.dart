import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shop_kart/utils/theme/theme.dart';


class App  extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeMode.system,
        theme: SkAppTheme.lightTheme,
        darkTheme: SkAppTheme.darkTheme,
        home: const OnBoardingScreen(),
    );
  }
}