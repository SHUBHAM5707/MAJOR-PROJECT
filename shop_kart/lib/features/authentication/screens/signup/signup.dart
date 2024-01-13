import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/login_signup/form_divider.dart';
import 'package:shop_kart/common/widgets/login_signup/social_button.dart';
import 'package:shop_kart/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/constants/text_string.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

class  SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SkSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(SkTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: SkSizes.spaceBtwSections),

              ///form
              const SkSignupForm(),
              const SizedBox(height: SkSizes.spaceBtwSections),


              ///divider
              SkFormDivider(dividerText: SkTexts.orSignInWith.capitalize!),
              const SizedBox(height: SkSizes.spaceBtwSections),


              ///social button
              const SkSocialButtons(),
            ],
          ),
        ),
      ),
    );

  }
}


