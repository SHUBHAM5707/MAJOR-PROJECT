import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shop_kart/common/style/spacing_style.dart';
import 'package:shop_kart/common/widgets/login_signup/form_divider.dart';
import 'package:shop_kart/common/widgets/login_signup/social_button.dart';
import 'package:shop_kart/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shop_kart/features/authentication/screens/login/widgets/login_header.dart';

import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/constants/text_string.dart';

class  LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SkSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo,titles & sub tiles
              const SkLoginHeader(),

              /// Form
              const SkLoginForm(),

              ///divider
              SkFormDivider(dividerText: SkTexts.orSignInWith.capitalize!),
              const SizedBox(height: SkSizes.spaceBtwSections),

              ///footer
              const SkSocialButtons(),

            ],
          ),
        ),
      ),
    );
  }
}