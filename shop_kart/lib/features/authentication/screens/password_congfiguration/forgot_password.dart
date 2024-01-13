import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/features/authentication/screens/password_congfiguration/reset_passwod.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/constants/text_string.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
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
            TextFormField(
              decoration: const InputDecoration(
                  labelText: SkTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: SkSizes.spaceBtwSections),

            ///Submit Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPassword()),
                    child: const Text(SkTexts.submit))),
          ],
        ),
      ),
    );
  }
}
