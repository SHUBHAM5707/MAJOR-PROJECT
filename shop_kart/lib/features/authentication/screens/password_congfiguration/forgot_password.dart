import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/features/authentication/controller/forget_password/forget_password_controller.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/constants/text_string.dart';
import 'package:shop_kart/utils/validators/validation.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(SkSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///heading
            Text(SkTexts.forgetPassword,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: SkSizes.spaceBtwIteam),
            Text(SkTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: SkSizes.spaceBtwSections * 2),

            ///text field
            Form(
              key: controller.forgetPasswordFormKey,
              child: TextFormField(
                controller: controller.email,
                validator: SkValidator.validateEmail,
                decoration: const InputDecoration(
                    labelText: SkTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right)),
              ),
            ),
            const SizedBox(height: SkSizes.spaceBtwSections),

            ///Submit Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.sendPasswordResendEmail(),
                    child: const Text(SkTexts.submit))),
          ],
        ),
      ),
    );
  }
}
