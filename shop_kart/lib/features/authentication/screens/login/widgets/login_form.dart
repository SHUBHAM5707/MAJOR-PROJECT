import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/features/authentication/controller/login/login_controller.dart';
import 'package:shop_kart/utils/validators/validation.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../password_congfiguration/forgot_password.dart';
import '../../signup/signup.dart';


class SkLoginForm extends StatelessWidget {
  const SkLoginForm({
    super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: SkSizes.spaceBtwSections),
        child: Column(
          children: [

            ///email
            TextFormField(
                controller: controller.email,
                validator: (value) => SkValidator.validateEmail(value),
                decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: SkTexts.email)),
            const SizedBox(height: SkSizes.spaceBtwInputFields),

            ///password
            TextFormField(
              controller: controller.password,
              validator: (value) => SkValidator.validateEmptyText('password', value),
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check), labelText: SkTexts.password, suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: SkSizes.spaceBtwInputFields / 2),

            ///remember pass
            Row(
              children: [
                ///remember me
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() =>
                        Checkbox(value: controller.rememberMe.value, onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value),
                    ),
                    const Text(SkTexts.rememberMe),
                  ],
                ),

                ///forget pass
                TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(SkTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: SkSizes.spaceBtwSections),

            ///sign-in button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.emailAndPasswordSignIn(), child: const Text(SkTexts.signIn))),
            const SizedBox(height: SkSizes.spaceBtwIteam),


            ///create account
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(SkTexts.createAccount))
            ),
          ],
        ),
      ),
    );
  }
}
