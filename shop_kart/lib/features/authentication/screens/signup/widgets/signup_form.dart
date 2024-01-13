import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/features/authentication/screens/signup/verify_email.dart';
import 'package:shop_kart/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';


import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';


class SkSignupForm extends StatelessWidget {
  const SkSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(labelText: SkTexts.firstname, prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: SkSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(labelText: SkTexts.lastName, prefixIcon: Icon(Iconsax.user)),
                ),
              )
            ],
          ),
          const SizedBox(height: SkSizes.spaceBtwInputFields),
          ///username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: SkTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: SkSizes.spaceBtwInputFields),

          ///email
          TextFormField(
            decoration: const InputDecoration(labelText: SkTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: SkSizes.spaceBtwInputFields),

          ///phone number
          TextFormField(
            decoration: const InputDecoration(labelText: SkTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: SkSizes.spaceBtwInputFields),

          ///password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: SkTexts.password,
              prefixIcon: Icon(Iconsax.password_check4),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: SkSizes.spaceBtwInputFields),
          /// t&c check
          const SkTermsAndConditionCheck(),
          const SizedBox(height: SkSizes.spaceBtwSections),
          /// signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen() ),
                child: const Text(SkTexts.createAccount)
            ),
          )
        ],
      ),
    );
  }
}

